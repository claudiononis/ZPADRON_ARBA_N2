CLASS zncl_pa_job DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_serializable_object.
    INTERFACES if_bgmc_operation.
    INTERFACES if_bgmc_op_single_tx_uncontr.
    INTERFACES if_oo_adt_classrun.

    METHODS constructor
      IMPORTING
        iv_id TYPE znfi_pa_job-id.

protected section.
  PRIVATE SECTION.

    "============================================================
    " CONTROL DE ESCRITURA
    "
    " FALSE = solamente evaluar / simular.
    " TRUE  = permitir CREATE/PATCH de IB2 y Z902.
    "
    " NO CAMBIAR TODAVIA.
    "============================================================
    CONSTANTS gc_execute_write TYPE abap_bool
      VALUE abap_true.

    CONSTANTS gc_batch_size TYPE i
      VALUE 200.

    CONSTANTS gc_ib2_end_date
      TYPE i_customertaxgrouping-CustTaxGroupSubjectedEndDate
      VALUE '99991231'.


    "============================================================
    " Estado IB2 simulado durante la corrida.
    "
    " Permite reproducir secuencialmente el comportamiento Node
    " aun cuando gc_execute_write = FALSE.
    "
    " Ejemplo:
    "
    " registro 1 -> CREATE 01/07
    " registro 2 mismo Customer 01/07 -> KEEP
    "
    " Sin este cache, ambos parecerian CREATE porque SAP no fue
    " modificado durante el dry-run.
    "============================================================
    TYPES:
      BEGIN OF ty_ib2_state,

        customer TYPE i_customercompany-Customer,

        current_start
          TYPE i_customertaxgrouping-CustTaxGroupSubjectedStartDate,

        current_end
          TYPE i_customertaxgrouping-CustTaxGroupSubjectedEndDate,

      END OF ty_ib2_state.

    TYPES tt_ib2_state TYPE HASHED TABLE OF ty_ib2_state
      WITH UNIQUE KEY customer.


    DATA mv_id TYPE znfi_pa_job-id.

    DATA mt_ib2_state TYPE tt_ib2_state.

    DATA mv_ib2_create TYPE i.
    DATA mv_ib2_update TYPE i.
    DATA mv_ib2_keep   TYPE i.
    DATA mv_ib2_error  TYPE i.

    DATA mv_z902_create  TYPE i.
    DATA mv_z902_update  TYPE i.
    DATA mv_z902_error   TYPE i.
    DATA mv_z902_applied TYPE i.


    METHODS process_job
      RETURNING
        VALUE(rv_log) TYPE string.


    METHODS set_error
      IMPORTING
        iv_message TYPE string.


    METHODS write_job_log
      IMPORTING
        iv_line_number      TYPE znfi_pa_joblog-line_number
        iv_cuit             TYPE znfi_pa_joblog-cuit
        iv_business_partner TYPE znfi_pa_joblog-business_partner
        iv_customer_id      TYPE znfi_pa_joblog-customer_id
        iv_nombre           TYPE znfi_pa_joblog-nombre
        iv_fecha_desde      TYPE znfi_pa_joblog-fecha_desde
        iv_fecha_hasta      TYPE znfi_pa_joblog-fecha_hasta
        iv_alicuota         TYPE znfi_pa_joblog-alicuota
        iv_condition_record TYPE znfi_pa_joblog-condition_record
        iv_estado           TYPE znfi_pa_joblog-estado
        iv_estado_color     TYPE znfi_pa_joblog-estado_color
        iv_estado_icono     TYPE znfi_pa_joblog-estado_icono
        iv_action           TYPE znfi_pa_joblog-accion
        iv_detalle          TYPE znfi_pa_joblog-detalle.


    METHODS padron_date_to_dats
      IMPORTING
        iv_value TYPE string
      RETURNING
        VALUE(rv_date)
          TYPE i_customertaxgrouping-CustTaxGroupSubjectedStartDate.


    METHODS process_batch
      IMPORTING
        it_records       TYPE zncl_pa_parser=>tt_records
        io_matcher       TYPE REF TO zncl_pa_matcher
        io_ib2           TYPE REF TO zncl_pa_ib2
        io_bp_api        TYPE REF TO zncl_pa_bp_api
        io_pricing       TYPE REF TO zncl_pa_pricing_api
        iv_company_code  TYPE i_customercompany-CompanyCode
        iv_chunk_current TYPE i
        iv_chunk_total   TYPE i
      CHANGING
        cv_processed TYPE znfi_pa_job-total_rows
        cv_found     TYPE znfi_pa_job-found_rows
        cv_not_found TYPE znfi_pa_job-not_found_rows.

ENDCLASS.



CLASS ZNCL_PA_JOB IMPLEMENTATION.


  METHOD constructor.

    mv_id = iv_id.

  ENDMETHOD.


  METHOD if_bgmc_op_single_tx_uncontr~execute.

    process_job( ).

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

    out->write(
      process_job( )
    ).

  ENDMETHOD.


  METHOD set_error.

    DATA lv_finished_at TYPE znfi_pa_job-finished_at.

    lv_finished_at =
      utclong_current( ).


    UPDATE znfi_pa_job
      SET status      = 'ERROR',
          message     = @iv_message,
          error_text  = @iv_message,
          finished_at = @lv_finished_at
      WHERE id        = @mv_id.


    COMMIT WORK.

  ENDMETHOD.


  METHOD padron_date_to_dats.

    CLEAR rv_date.


    "------------------------------------------------------------
    " Padron:
    " DDMMYYYY
    "
    " SAP:
    " YYYYMMDD
    "------------------------------------------------------------
    IF strlen( iv_value ) <> 8.

      RETURN.

    ENDIF.


    DATA(lv_date_text) =
         iv_value+4(4)
      && iv_value+2(2)
      && iv_value+0(2).


    rv_date =
      CONV #( lv_date_text ).

  ENDMETHOD.


  METHOD write_job_log.

    DATA ls_log TYPE znfi_pa_joblog.

    CLEAR ls_log.

    TRY.

        ls_log-id =
          cl_system_uuid=>create_uuid_x16_static( ).

      CATCH cx_uuid_error.

        " El log no debe derribar el procesamiento principal.
        RETURN.

    ENDTRY.


    ls_log-job_uuid         = mv_id.
    ls_log-line_number      = iv_line_number.
    ls_log-cuit             = iv_cuit.
    ls_log-business_partner = iv_business_partner.
    ls_log-customer_id      = iv_customer_id.
    ls_log-nombre           = iv_nombre.
    ls_log-fecha_desde      = iv_fecha_desde.
    ls_log-fecha_hasta      = iv_fecha_hasta.
    ls_log-alicuota         = iv_alicuota.
    ls_log-condition_record = iv_condition_record.
    ls_log-estado           = iv_estado.
    ls_log-estado_color     = iv_estado_color.
    ls_log-estado_icono     = iv_estado_icono.
    ls_log-accion           = iv_action.
    ls_log-detalle          = iv_detalle.


    INSERT znfi_pa_joblog
      FROM @ls_log.

  ENDMETHOD.


  METHOD process_batch.

    IF it_records IS INITIAL.
      RETURN.
    ENDIF.


    "============================================================
    " 1. CUIT del batch
    "============================================================
    DATA lt_cuits TYPE zncl_pa_matcher=>tt_cuits.

    LOOP AT it_records
      INTO DATA(ls_record_cuit).

      IF ls_record_cuit-cuit IS INITIAL.
        CONTINUE.
      ENDIF.

      APPEND ls_record_cuit-cuit
        TO lt_cuits.

    ENDLOOP.


    "============================================================
    " 2. CUIT -> BP -> Customer -> Sociedad
    "============================================================
*    DATA(lt_matches) =
*      io_matcher->resolve_batch(
*        it_cuits        = lt_cuits
*        iv_company_code = iv_company_code
*      ).
"============================================================
" CUIT -> BP -> Customer -> Sociedad SAP
"
" El upload ARBA utiliza 02AR como identificador funcional.
" Los Customers del tenant están extendidos a CompanyCode 1000.
" No utilizar 02AR para I_CustomerCompany.
"============================================================
CONSTANTS lc_customer_company_code
  TYPE i_customercompany-CompanyCode
  VALUE '1000'.

DATA(lt_matches) =
  io_matcher->resolve_batch(
    it_cuits        = lt_cuits
    iv_company_code = lc_customer_company_code
  ).


    "============================================================
    " 3. Procesar cada registro del padrón
    "============================================================
    LOOP AT it_records
      INTO DATA(ls_record).

      cv_processed += 1.


      "----------------------------------------------------------
      " 3.1 Buscar Customer correspondiente al CUIT
      "----------------------------------------------------------
      READ TABLE lt_matches
        INTO DATA(ls_match)
        WITH KEY
          cuit = ls_record-cuit.


      IF sy-subrc <> 0
         OR ls_match-found <> abap_true.

        cv_not_found += 1.
        CONTINUE.

      ENDIF.


      cv_found += 1.


      "----------------------------------------------------------
      " 3.2 Customer tipado SAP
      "----------------------------------------------------------
      DATA(lv_customer) =
        CONV i_customercompany-Customer(
          ls_match-customer_id
        ).


      IF lv_customer IS INITIAL.

        mv_ib2_error += 1.
        CONTINUE.

      ENDIF.


      "----------------------------------------------------------
      " 3.3 Conversiones explícitas a STRING
      "
      " El parser entrega campos C de longitud fija.
      " ZNCL_PA_IB2 / ZNCL_PA_BP_API reciben STRING.
      "----------------------------------------------------------
      DATA(lv_fecha_desde_text) =
        CONV string(
          ls_record-fecha_desde
        ).


      DATA(lv_fecha_hasta_text) =
        CONV string(
          ls_record-fecha_hasta
        ).


      DATA(lv_alicuota_text) =
        CONV string(
          ls_record-alicuota
        ).


      DATA(lv_customer_text) =
        CONV string(
          lv_customer
        ).


      "----------------------------------------------------------
      " 3.4 Fecha esperada IB2
      "----------------------------------------------------------
      DATA(lv_expected_start) =
        padron_date_to_dats(
          iv_value = lv_fecha_desde_text
        ).


      IF lv_expected_start IS INITIAL.

        mv_ib2_error += 1.
        CONTINUE.

      ENDIF.


      DATA(lv_expected_end) =
        gc_ib2_end_date.


      TRY.

          "======================================================
          " 4. ¿Ya tenemos un estado simulado para el Customer?
          "======================================================
          READ TABLE mt_ib2_state
            ASSIGNING FIELD-SYMBOL(<ls_ib2_state>)
            WITH TABLE KEY
              customer = lv_customer.


          DATA lv_ib2_action TYPE c LENGTH 10.

          CLEAR lv_ib2_action.


          IF sy-subrc = 0.

            "----------------------------------------------------
            " Customer ya tratado antes en esta misma corrida.
            "
            " En dry-run usamos el estado que habría quedado.
            "----------------------------------------------------
            IF <ls_ib2_state>-current_start <>
                 lv_expected_start
               OR
               <ls_ib2_state>-current_end <>
                 lv_expected_end.

              lv_ib2_action =
                'UPDATE'.

            ELSE.

              lv_ib2_action =
                'KEEP'.

            ENDIF.


          ELSE.

            "----------------------------------------------------
            " Primera aparición del Customer.
            "
            " Consultar situación real SAP.
            "----------------------------------------------------
            DATA(ls_ib2_eval) =
              io_ib2->evaluate(
                iv_customer    = lv_customer
                iv_fecha_desde = lv_fecha_desde_text
              ).


            lv_ib2_action =
              ls_ib2_eval-action.


            IF lv_ib2_action = 'ERROR'.

              mv_ib2_error += 1.
              CONTINUE.

            ENDIF.

          ENDIF.


          "======================================================
          " 5. Ejecutar decisión
          "======================================================
          CASE lv_ib2_action.


            "----------------------------------------------------
            " CREATE
            "----------------------------------------------------
            WHEN 'CREATE'.

              DATA(lv_create_ok) =
                abap_true.


              IF gc_execute_write = abap_true.

                IF io_bp_api IS NOT BOUND.

                  lv_create_ok =
                    abap_false.

                ELSE.

                  DATA(ls_create_result) =
                    io_bp_api->create_ib2(
                      iv_customer    = lv_customer_text
                      iv_fecha_desde = lv_fecha_desde_text
                    ).


                  IF ls_create_result-success <> abap_true.

                    lv_create_ok =
                      abap_false.

                  ENDIF.

                ENDIF.

              ENDIF.


              IF lv_create_ok <> abap_true.

                mv_ib2_error += 1.
                CONTINUE.

              ENDIF.


              mv_ib2_create += 1.


              "--------------------------------------------------
              " Estado posterior real o simulado
              "--------------------------------------------------
              INSERT VALUE #(
                customer      = lv_customer
                current_start = lv_expected_start
                current_end   = lv_expected_end
              )
              INTO TABLE mt_ib2_state.


              IF sy-subrc <> 0.

                READ TABLE mt_ib2_state
                  ASSIGNING <ls_ib2_state>
                  WITH TABLE KEY
                    customer = lv_customer.


                IF sy-subrc = 0.

                  <ls_ib2_state>-current_start =
                    lv_expected_start.

                  <ls_ib2_state>-current_end =
                    lv_expected_end.

                ENDIF.

              ENDIF.



            "----------------------------------------------------
            " UPDATE
            "----------------------------------------------------
            WHEN 'UPDATE'.

              DATA(lv_update_ok) =
                abap_true.


              IF gc_execute_write = abap_true.

                IF io_bp_api IS NOT BOUND.

                  lv_update_ok =
                    abap_false.

                ELSE.

                  DATA(ls_update_result) =
                    io_bp_api->update_ib2(
                      iv_customer    = lv_customer_text
                      iv_fecha_desde = lv_fecha_desde_text
                    ).


                  IF ls_update_result-success <> abap_true.

                    lv_update_ok =
                      abap_false.

                  ENDIF.

                ENDIF.

              ENDIF.


              IF lv_update_ok <> abap_true.

                mv_ib2_error += 1.
                CONTINUE.

              ENDIF.


              mv_ib2_update += 1.


              READ TABLE mt_ib2_state
                ASSIGNING <ls_ib2_state>
                WITH TABLE KEY
                  customer = lv_customer.


              IF sy-subrc = 0.

                <ls_ib2_state>-current_start =
                  lv_expected_start.

                <ls_ib2_state>-current_end =
                  lv_expected_end.

              ELSE.

                INSERT VALUE #(
                  customer      = lv_customer
                  current_start = lv_expected_start
                  current_end   = lv_expected_end
                )
                INTO TABLE mt_ib2_state.

              ENDIF.



            "----------------------------------------------------
            " KEEP
            "
            " IB2 ya coincide: no se hace PATCH.
            "----------------------------------------------------
            WHEN 'KEEP'.

              mv_ib2_keep += 1.


              READ TABLE mt_ib2_state
                ASSIGNING <ls_ib2_state>
                WITH TABLE KEY
                  customer = lv_customer.


              IF sy-subrc = 0.

                <ls_ib2_state>-current_start =
                  lv_expected_start.

                <ls_ib2_state>-current_end =
                  lv_expected_end.

              ELSE.

                INSERT VALUE #(
                  customer      = lv_customer
                  current_start = lv_expected_start
                  current_end   = lv_expected_end
                )
                INTO TABLE mt_ib2_state.

              ENDIF.



            "----------------------------------------------------
            " Resultado inesperado
            "----------------------------------------------------
            WHEN OTHERS.

              mv_ib2_error += 1.
              CONTINUE.

          ENDCASE.


        CATCH cx_root INTO DATA(lx_ib2_record).

          "Error de un registro:
          "no derribar toda la corrida.
          mv_ib2_error += 1.

          CONTINUE.

      ENDTRY.


      "============================================================
      " 6. Pricing Z902
      "
      " Igual que el Node original:
      " - si existe misma vigencia -> UPDATE
      " - si no existe             -> CREATE
      " - en CREATE real cierra antes vigencias solapadas
      "
      " Con gc_execute_write = FALSE:
      " solamente consulta y clasifica; NO escribe.
      "============================================================
      TRY.

          IF io_pricing IS NOT BOUND.

            mv_z902_error += 1.
            CONTINUE.

          ENDIF.


          DATA(ls_pricing_result) =
            io_pricing->process_condition(
              iv_customer      = lv_customer_text
              iv_fecha_desde   = lv_fecha_desde_text
              iv_fecha_hasta   = lv_fecha_hasta_text
              iv_alicuota      = lv_alicuota_text
              iv_company_code  = CONV string( iv_company_code )
              iv_execute_write = gc_execute_write
            ).


          IF ls_pricing_result-success <> abap_true.

            mv_z902_error += 1.
            CONTINUE.

          ENDIF.


          CASE ls_pricing_result-action.

            WHEN 'C'.

              mv_z902_create += 1.

            WHEN 'U'.

              mv_z902_update += 1.

            WHEN OTHERS.

              mv_z902_error += 1.
              CONTINUE.

          ENDCASE.


          IF ls_pricing_result-applied = abap_true.

            mv_z902_applied += 1.

          ENDIF.


          "--------------------------------------------------------
          " Detalle visible en frontend.
          "
          " El detalle de esta pantalla representa únicamente
          " registros encontrados que llegaron correctamente
          " hasta Pricing: CREATE o UPDATE.
          "--------------------------------------------------------
          DATA(lv_log_action) =
            COND string(
              WHEN ls_pricing_result-action = 'C'
                THEN 'CREATE'
              WHEN ls_pricing_result-action = 'U'
                THEN 'UPDATE'
              ELSE
                'PROCESS'
            ).


          DATA(lv_log_estado) =
            COND string(
              WHEN gc_execute_write = abap_false
                THEN 'SIMULADO'
              WHEN ls_pricing_result-action = 'C'
                THEN 'CREADO'
              WHEN ls_pricing_result-action = 'U'
                THEN 'ACTUALIZADO'
              ELSE
                'PROCESADO'
            ).


          DATA(lv_log_detalle) =
               |IB2 { lv_ib2_action }; |
            && |Z902 { ls_pricing_result-reason }|.


          write_job_log(
            iv_line_number      = cv_processed
            iv_cuit             = CONV #( ls_record-cuit )
            iv_business_partner = CONV #( ls_match-business_partner )
            iv_customer_id      = CONV #( ls_match-customer_id )
            iv_nombre           = CONV #( ls_match-nombre )
            iv_fecha_desde      = CONV #( ls_record-fecha_desde )
            iv_fecha_hasta      = CONV #( ls_record-fecha_hasta )
*            iv_alicuota         = CONV #( ls_record-alicuota )
            iv_alicuota         = CONV #( lv_alicuota_text )
            iv_condition_record = CONV #( ls_pricing_result-condition_record )
            iv_estado           = CONV #( lv_log_estado )
            iv_estado_color     = 'Success'
            iv_estado_icono     = 'sap-icon://accept'
            iv_action           = CONV #( lv_log_action )
            iv_detalle          = CONV #( lv_log_detalle )
          ).


        CATCH cx_root INTO DATA(lx_z902_record).

          " Error de pricing de un registro:
          " no derribar toda la corrida.
          mv_z902_error += 1.

          CONTINUE.

      ENDTRY.

    ENDLOOP.


    "============================================================
    " 7. Progreso
    "============================================================
    DATA(lv_mode_text) =
      COND string(
        WHEN gc_execute_write = abap_true
          THEN 'WRITE'
        ELSE
          'DRY'
      ).


    DATA(lv_message) =
         |ARBA { lv_mode_text }: |
      && |{ cv_processed } proc, |
      && |{ cv_found } ok, |
      && |{ cv_not_found } no; |
      && |IB2 C:{ mv_ib2_create } |
      && |U:{ mv_ib2_update } |
      && |K:{ mv_ib2_keep } |
      && |E:{ mv_ib2_error }; |
      && |Z902 C:{ mv_z902_create } |
      && |U:{ mv_z902_update } |
      && |E:{ mv_z902_error } |
      && |A:{ mv_z902_applied }; |
      && |ch { iv_chunk_current }/{ iv_chunk_total }|.


    DATA(lv_total_errors) =
      mv_ib2_error + mv_z902_error.


    UPDATE znfi_pa_job
      SET total_rows     = @cv_processed,
          found_rows     = @cv_found,
          not_found_rows = @cv_not_found,
          create_count   = @mv_z902_create,
          update_count   = @mv_z902_update,
          error_count    = @lv_total_errors,
          applied_count  = @mv_z902_applied,
          message        = @lv_message
      WHERE id           = @mv_id.


    COMMIT WORK.

  ENDMETHOD.


  METHOD process_job.

    "============================================================
    " 1. Validar UUID
    "============================================================
    IF mv_id IS INITIAL.

      rv_log =
        'No se recibió UUID de Job ARBA'.

      RETURN.

    ENDIF.


    "============================================================
    " 2. Leer Job
    "============================================================
    SELECT SINGLE
      FROM znfi_pa_job
      FIELDS
        id,
        job_id,
        status,
        file_name
      WHERE id = @mv_id
      INTO @DATA(ls_job).


    IF sy-subrc <> 0.

      rv_log =
        |No existe Job ARBA para UUID { mv_id }|.

      RETURN.

    ENDIF.


    "============================================================
    " 3. Sólo PENDING
    "============================================================
    IF ls_job-status <> 'PENDING'.

      rv_log =
           |Job { ls_job-job_id } no está PENDING. |
        && |Estado: { ls_job-status }|.

      RETURN.

    ENDIF.


    "Referencia declarada fuera del TRY para poder cerrarla
    "tambien en caso de error.
    DATA lo_bp_api      TYPE REF TO zncl_pa_bp_api.
    DATA lo_pricing_api TYPE REF TO zncl_pa_pricing_api.


    TRY.

        "========================================================
        " 4. Metadata de chunks
        "========================================================
        SELECT
          FROM znfi_pa_upload
          FIELDS
            id,
            chunk_index,
            total_chunks,
            company_code,
            file_name
          WHERE upload_id = @ls_job-job_id
          ORDER BY chunk_index
          INTO TABLE @DATA(lt_chunks).


        IF lt_chunks IS INITIAL.

          set_error(
            |No existen chunks para UploadId { ls_job-job_id }|
          ).

          rv_log =
            |Job { ls_job-job_id }: sin chunks|.

          RETURN.

        ENDIF.


        "========================================================
        " 5. Total chunks
        "========================================================
        DATA(lv_expected_total) =
          lt_chunks[ 1 ]-total_chunks.


        IF lv_expected_total <= 0.

          set_error(
            'Cantidad total de chunks inválida'
          ).

          rv_log =
            |Job { ls_job-job_id }: TotalChunks inválido|.

          RETURN.

        ENDIF.


        IF lines( lt_chunks ) <> lv_expected_total.

          set_error(
               |Upload incompleto: recibidos { lines( lt_chunks ) } |
            && |de { lv_expected_total } chunks|
          ).

          rv_log =
            |Job { ls_job-job_id }: upload incompleto|.

          RETURN.

        ENDIF.


        "========================================================
        " 6. Sociedad
        "========================================================
        DATA(lv_company_code) =
          lt_chunks[ 1 ]-company_code.


        IF lv_company_code IS INITIAL.

          set_error(
            'El upload no tiene sociedad informada'
          ).

          rv_log =
            |Job { ls_job-job_id }: sociedad vacía|.

          RETURN.

        ENDIF.


        "========================================================
        " 7. Validar chunks
        "========================================================
        DATA lv_expected_index TYPE i
          VALUE 0.


        LOOP AT lt_chunks
          INTO DATA(ls_chunk_check).


          IF ls_chunk_check-total_chunks <>
               lv_expected_total.

            set_error(
              'Los chunks tienen valores TotalChunks inconsistentes'
            ).

            rv_log =
              |Job { ls_job-job_id }: TotalChunks inconsistente|.

            RETURN.

          ENDIF.


          IF ls_chunk_check-chunk_index <>
               lv_expected_index.

            set_error(
                 |Secuencia de chunks inválida. Esperado |
              && |{ lv_expected_index }, recibido |
              && |{ ls_chunk_check-chunk_index }|
            ).

            rv_log =
              |Job { ls_job-job_id }: secuencia inválida|.

            RETURN.

          ENDIF.


          IF ls_chunk_check-company_code <>
               lv_company_code.

            set_error(
              'Los chunks pertenecen a sociedades diferentes'
            ).

            rv_log =
              |Job { ls_job-job_id }: sociedad inconsistente|.

            RETURN.

          ENDIF.


          lv_expected_index += 1.

        ENDLOOP.


        "========================================================
        " 8. RUNNING
        "========================================================
        DATA lv_started_at TYPE znfi_pa_job-started_at.

        lv_started_at =
          utclong_current( ).


        CLEAR:
          mt_ib2_state,
          mv_ib2_create,
          mv_ib2_update,
          mv_ib2_keep,
          mv_ib2_error,
          mv_z902_create,
          mv_z902_update,
          mv_z902_error,
          mv_z902_applied.


        DATA(lv_start_mode) =
          COND string(
            WHEN gc_execute_write = abap_true
              THEN 'WRITE'
            ELSE
              'DRY-RUN'
          ).


        DATA(lv_start_message) =
             |Procesando padrón ARBA - |
          && |sociedad { lv_company_code } - |
          && |IB2/Z902 { lv_start_mode }|.


        " Limpiar detalle previo del mismo UUID técnico.
        " Normalmente no existe, pero evita duplicados ante una
        " reejecución controlada del mismo Job.
        DELETE FROM znfi_pa_joblog
          WHERE job_uuid = @mv_id.


        UPDATE znfi_pa_job
          SET status         = 'RUNNING',
              message        = @lv_start_message,
              error_text     = '',
              total_rows     = 0,
              found_rows     = 0,
              not_found_rows = 0,
              create_count   = 0,
              update_count   = 0,
              error_count    = 0,
              applied_count  = 0,
              started_at     = @lv_started_at
          WHERE id           = @mv_id.


        COMMIT WORK.


        "========================================================
        " 9. Objetos
        "========================================================
        DATA(lo_parser) =
          NEW zncl_pa_parser( ).


        DATA(lo_matcher) =
          NEW zncl_pa_matcher( ).


        DATA(lo_ib2) =
          NEW zncl_pa_ib2( ).


        "--------------------------------------------------------
        " Pricing se crea siempre:
        " aun en DRY-RUN necesitamos consultar Z902.
        "--------------------------------------------------------
        lo_pricing_api =
          NEW zncl_pa_pricing_api( ).


        "--------------------------------------------------------
        " Solamente creamos el cliente de escritura si se habilita
        " explicitamente gc_execute_write.
        "
        " Con FALSE ni siquiera se crea conexion BP para escribir.
        "--------------------------------------------------------
        IF gc_execute_write = abap_true.

          lo_bp_api =
            NEW zncl_pa_bp_api( ).

        ENDIF.


        DATA lv_remainder TYPE string.

        DATA lv_processed
          TYPE znfi_pa_job-total_rows.

        DATA lv_found
          TYPE znfi_pa_job-found_rows.

        DATA lv_not_found
          TYPE znfi_pa_job-not_found_rows.


        CLEAR:
          lv_remainder,
          lv_processed,
          lv_found,
          lv_not_found.


        DATA lt_batch
          TYPE zncl_pa_parser=>tt_records.


        "========================================================
        " 10. Chunk por chunk
        "========================================================
        LOOP AT lt_chunks
          INTO DATA(ls_chunk).


          "------------------------------------------------------
          " Contenido únicamente del chunk actual
          "------------------------------------------------------
          SELECT SINGLE
            FROM znfi_pa_upload
            FIELDS content
            WHERE id = @ls_chunk-id
            INTO @DATA(lv_chunk_content).


          IF sy-subrc <> 0.

            set_error(
              |No pudo leerse chunk { ls_chunk-chunk_index }|
            ).

            rv_log =
              |Job { ls_job-job_id }: error leyendo chunk|.

            RETURN.

          ENDIF.


          "------------------------------------------------------
          " Último chunk
          "------------------------------------------------------
          DATA lv_is_final TYPE abap_bool.

          lv_is_final =
            abap_false.


          IF ls_chunk-chunk_index =
               lv_expected_total - 1.

            lv_is_final =
              abap_true.

          ENDIF.


          "------------------------------------------------------
          " Parser incremental
          "------------------------------------------------------
          DATA(lt_records) =
            lo_parser->parse_chunk(
              EXPORTING
                iv_content   = lv_chunk_content
                iv_is_final  = lv_is_final
              CHANGING
                cv_remainder = lv_remainder
            ).


          DATA(lv_current_chunk) =
            ls_chunk-chunk_index + 1.


          "------------------------------------------------------
          " Batches de 200
          "------------------------------------------------------
          LOOP AT lt_records
            INTO DATA(ls_parsed_record).


            APPEND ls_parsed_record
              TO lt_batch.


            IF lines( lt_batch ) >=
                 gc_batch_size.


              process_batch(
                EXPORTING
                  it_records        = lt_batch
                  io_matcher        = lo_matcher
                  io_ib2            = lo_ib2
                  io_bp_api         = lo_bp_api
                  io_pricing        = lo_pricing_api
                  iv_company_code   = lv_company_code
                  iv_chunk_current  = lv_current_chunk
                  iv_chunk_total    = lv_expected_total
                CHANGING
                  cv_processed      = lv_processed
                  cv_found          = lv_found
                  cv_not_found      = lv_not_found
              ).


              CLEAR lt_batch.

            ENDIF.

          ENDLOOP.


          "------------------------------------------------------
          " Resto
          "------------------------------------------------------
          IF lt_batch IS NOT INITIAL.


            process_batch(
              EXPORTING
                it_records        = lt_batch
                io_matcher        = lo_matcher
                io_ib2            = lo_ib2
                io_bp_api         = lo_bp_api
                io_pricing        = lo_pricing_api
                iv_company_code   = lv_company_code
                iv_chunk_current  = lv_current_chunk
                iv_chunk_total    = lv_expected_total
              CHANGING
                cv_processed      = lv_processed
                cv_found          = lv_found
                cv_not_found      = lv_not_found
            ).


            CLEAR lt_batch.

          ENDIF.


          CLEAR:
            lt_records,
            lv_chunk_content.

        ENDLOOP.


        "========================================================
        " 11. Cerrar cliente si alguna vez se habilitó escritura
        "========================================================
        IF lo_bp_api IS BOUND.

          lo_bp_api->close( ).

          CLEAR lo_bp_api.

        ENDIF.


        IF lo_pricing_api IS BOUND.

          lo_pricing_api->close( ).

          CLEAR lo_pricing_api.

        ENDIF.


        "========================================================
        " 12. Finalizar
        "
        " IMPORTANTE:
        "
        " En esta version:
        " - IB2 evaluado y escrito cuando gc_execute_write = TRUE
        " - Z902 evaluado y escrito cuando gc_execute_write = TRUE
        " - detalle CREATE/UPDATE persistido en ZNFI_PA_JOBLOG
        "========================================================
        DATA lv_finished_at
          TYPE znfi_pa_job-finished_at.


        lv_finished_at =
          utclong_current( ).


        DATA(lv_final_mode) =
          COND string(
            WHEN gc_execute_write = abap_true
              THEN 'WRITE'
            ELSE
              'DRY-RUN'
          ).


        DATA(lv_final_message) =
             |ARBA { lv_final_mode }: |
          && |{ lv_processed } proc, |
          && |{ lv_found } encontrados, |
          && |{ lv_not_found } no encontrados; |
          && |IB2 C:{ mv_ib2_create } |
          && |U:{ mv_ib2_update } |
          && |K:{ mv_ib2_keep } |
          && |E:{ mv_ib2_error }; |
          && |Z902 C:{ mv_z902_create } |
          && |U:{ mv_z902_update } |
          && |E:{ mv_z902_error } |
          && |A:{ mv_z902_applied }|.


        DATA(lv_final_errors) =
          mv_ib2_error + mv_z902_error.


        UPDATE znfi_pa_job
          SET status         = 'DONE',
              total_rows     = @lv_processed,
              found_rows     = @lv_found,
              not_found_rows = @lv_not_found,
              create_count   = @mv_z902_create,
              update_count   = @mv_z902_update,
              error_count    = @lv_final_errors,
              applied_count  = @mv_z902_applied,
              message        = @lv_final_message,
              finished_at    = @lv_finished_at
          WHERE id           = @mv_id.


        COMMIT WORK.


        rv_log =
             |Job ARBA OK: { ls_job-job_id }, |
          && |modo={ lv_final_mode }, |
          && |sociedad={ lv_company_code }, |
          && |procesados={ lv_processed }, |
          && |encontrados={ lv_found }, |
          && |no_encontrados={ lv_not_found }, |
          && |IB2_CREATE={ mv_ib2_create }, |
          && |IB2_UPDATE={ mv_ib2_update }, |
          && |IB2_KEEP={ mv_ib2_keep }, |
          && |IB2_ERROR={ mv_ib2_error }, |
          && |Z902_CREATE={ mv_z902_create }, |
          && |Z902_UPDATE={ mv_z902_update }, |
          && |Z902_ERROR={ mv_z902_error }, |
          && |Z902_APPLIED={ mv_z902_applied }|.


      CATCH cx_root INTO DATA(lx_error).


        IF lo_bp_api IS BOUND.

          TRY.

              lo_bp_api->close( ).

            CATCH cx_root.

          ENDTRY.

        ENDIF.


        IF lo_pricing_api IS BOUND.

          TRY.

              lo_pricing_api->close( ).

            CATCH cx_root.

          ENDTRY.

        ENDIF.


        DATA(lv_error_text) =
          lx_error->get_text( ).


        set_error(
          lv_error_text
        ).


        rv_log =
             |Job ARBA ERROR: { ls_job-job_id } - |
          && |{ lv_error_text }|.

    ENDTRY.

  ENDMETHOD.
ENDCLASS.
