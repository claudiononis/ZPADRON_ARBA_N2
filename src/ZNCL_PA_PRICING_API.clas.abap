CLASS zncl_pa_pricing_api DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_process_result,
        success          TYPE abap_bool,
        action           TYPE c LENGTH 1, "C=create U=update E=error
        applied          TYPE abap_bool,
        condition_record TYPE string,
        closed_count     TYPE i,
        status_code      TYPE i,
        reason           TYPE string,
        body             TYPE string,
      END OF ty_process_result.

    METHODS constructor
      RAISING
        cx_http_dest_provider_error
        cx_web_http_client_error.

    METHODS process_condition
      IMPORTING
        iv_customer      TYPE string
        iv_fecha_desde   TYPE string
        iv_fecha_hasta   TYPE string
        iv_alicuota      TYPE string
        iv_company_code  TYPE string
        iv_execute_write TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(rs_result) TYPE ty_process_result
      RAISING
        cx_http_dest_provider_error
        cx_web_http_client_error.

    METHODS close
      RAISING
        cx_web_http_client_error.

protected section.
  PRIVATE SECTION.

    TYPES:
      BEGIN OF ty_http_result,
        status_code TYPE i,
        reason      TYPE string,
        body        TYPE string,
        etag        TYPE string,
      END OF ty_http_result,

      BEGIN OF ty_find_result,
        success          TYPE abap_bool,
        exists           TYPE abap_bool,
        condition_record TYPE string,
        status_code      TYPE i,
        reason           TYPE string,
        body             TYPE string,
      END OF ty_find_result,

      BEGIN OF ty_close_result,
        success     TYPE abap_bool,
        closed      TYPE i,
        status_code TYPE i,
        reason      TYPE string,
        body        TYPE string,
      END OF ty_close_result.

    TYPES:
      BEGIN OF ty_deep_create.

        INCLUDE TYPE
          znscm_pa_pricing=>tys_a_sls_prcg_condition_rec_3.

    TYPES:
        to_sls_prcg_cndn_recd_vali
          TYPE znscm_pa_pricing=>tyt_a_sls_prcg_cndn_recd_val_2,

      END OF ty_deep_create.

    TYPES:
      BEGIN OF ty_root_key,
        condition_record TYPE c LENGTH 10,
      END OF ty_root_key,

      BEGIN OF ty_validity_key,
        condition_record           TYPE c LENGTH 10,
        condition_validity_end_dat TYPE datn,
      END OF ty_validity_key.

    METHODS execute
      IMPORTING
        iv_method        TYPE if_web_http_client=>method
        iv_path          TYPE string
        iv_accept        TYPE string DEFAULT 'application/json'
      RETURNING
        VALUE(rs_result) TYPE ty_http_result
      RAISING
        cx_web_http_client_error.

    METHODS format_date_for_s4
      IMPORTING
        iv_date        TYPE string
      RETURNING
        VALUE(rv_date) TYPE string.

    METHODS previous_day_for_s4
      IMPORTING
        iv_date        TYPE string
      RETURNING
        VALUE(rv_date) TYPE string.


    METHODS date_value_to_epoch_ms
      IMPORTING
        iv_value        TYPE string
      RETURNING
        VALUE(rv_ms)    TYPE int8.

    METHODS date_value_to_s4
      IMPORTING
        iv_value        TYPE string
      RETURNING
        VALUE(rv_date)  TYPE string.

    METHODS normalize_rate
      IMPORTING
        iv_rate        TYPE string
      RETURNING
        VALUE(rv_rate) TYPE string.

    METHODS normalize_etag_for_proxy
      IMPORTING
        iv_etag_header TYPE string
      RETURNING
        VALUE(rv_etag) TYPE string.

    METHODS escape_odata_literal
      IMPORTING
        iv_value        TYPE string
      RETURNING
        VALUE(rv_value) TYPE string.

    METHODS encode_filter
      IMPORTING
        iv_filter       TYPE string
      RETURNING
        VALUE(rv_filter) TYPE string.

    METHODS extract_field
      IMPORTING
        iv_text         TYPE string
        iv_field        TYPE string
      RETURNING
        VALUE(rv_value) TYPE string.

    METHODS find_for_validity
      IMPORTING
        iv_customer      TYPE string
        iv_fecha_desde   TYPE string
        iv_fecha_hasta   TYPE string
        iv_company_code  TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_find_result
      RAISING
        cx_web_http_client_error.

    METHODS find_overlap
      IMPORTING
        iv_customer      TYPE string
        iv_fecha_desde   TYPE string
        iv_fecha_hasta   TYPE string
        iv_company_code  TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_http_result
      RAISING
        cx_web_http_client_error.

    METHODS close_overlaps
      IMPORTING
        iv_customer      TYPE string
        iv_fecha_desde   TYPE string
        iv_fecha_hasta   TYPE string
        iv_company_code  TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_close_result
      RAISING
        cx_web_http_client_error.

    METHODS create_condition
      IMPORTING
        iv_customer      TYPE string
        iv_fecha_desde   TYPE string
        iv_fecha_hasta   TYPE string
        iv_alicuota      TYPE string
        iv_company_code  TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_http_result
      RAISING
        cx_web_http_client_error.

    METHODS update_condition
      IMPORTING
        iv_condition_record TYPE string
        iv_alicuota         TYPE string
      RETURNING
        VALUE(rs_result)    TYPE ty_http_result
      RAISING
        cx_web_http_client_error.

ENDCLASS.



CLASS ZNCL_PA_PRICING_API IMPLEMENTATION.


  METHOD constructor.

    " Sin estado HTTP persistente. Los READ abren un cliente por
    " llamada y los WRITE usan OData Client Proxy.

  ENDMETHOD.


  METHOD execute.

    " Helper HTTP usado únicamente por los READ.
    " Cada llamada abre y cierra un cliente independiente.
    TRY.

        DATA(lo_destination) =
          cl_http_destination_provider=>create_by_comm_arrangement(
            comm_scenario  = 'ZNCS_PA_PRICING_OUT'
            comm_system_id = 'Z_PA_PRICING_SELF'
            service_id     = 'ZNPA_PRICING_REST'
          ).

        DATA(lo_client) =
          cl_web_http_client_manager=>create_by_http_destination(
            lo_destination
          ).

        lo_client->enable_path_prefix( ).

        DATA(lo_request) =
          lo_client->get_http_request( ).

        lo_request->set_uri_path(
          iv_path
        ).

        lo_request->set_header_field(
          i_name  = 'Accept'
          i_value = iv_accept
        ).

        DATA(lo_response) =
          lo_client->execute(
            iv_method
          ).

        DATA(ls_status) =
          lo_response->get_status( ).

        rs_result-status_code =
          ls_status-code.

        rs_result-reason =
          ls_status-reason.

        rs_result-body =
          lo_response->get_text( ).

        rs_result-etag =
          lo_response->get_header_field(
            i_name = 'ETag'
          ).

        lo_client->close( ).

      CATCH cx_http_dest_provider_error INTO DATA(lx_destination).

        CLEAR rs_result.
        rs_result-status_code = 0.
        rs_result-reason      = lx_destination->get_text( ).

    ENDTRY.

  ENDMETHOD.


  METHOD format_date_for_s4.

    IF strlen( iv_date ) <> 8.

      rv_date = iv_date.
      RETURN.

    ENDIF.

    rv_date =
         iv_date+4(4)
      && '-'
      && iv_date+2(2)
      && '-'
      && iv_date+0(2)
      && 'T00:00:00'.

  ENDMETHOD.


  METHOD previous_day_for_s4.

    IF strlen( iv_date ) <> 8.

      CLEAR rv_date.
      RETURN.

    ENDIF.

    DATA lv_date TYPE d.

    lv_date =
         iv_date+4(4)
      && iv_date+2(2)
      && iv_date+0(2).

    lv_date = lv_date - 1.

    rv_date =
         lv_date+0(4)
      && '-'
      && lv_date+4(2)
      && '-'
      && lv_date+6(2)
      && 'T00:00:00'.

  ENDMETHOD.


  METHOD date_value_to_epoch_ms.

    CLEAR rv_ms.

    DATA(lv_value) = iv_value.
    CONDENSE lv_value NO-GAPS.

    IF lv_value IS INITIAL.
      RETURN.
    ENDIF.

    "------------------------------------------------------------
    " OData V2 JSON: /Date(1782864000000)/
    "------------------------------------------------------------
    DATA lv_pos TYPE i.

    FIND FIRST OCCURRENCE OF `/Date(`
      IN lv_value
      MATCH OFFSET lv_pos.

    IF sy-subrc = 0.

      DATA(lv_start) = lv_pos + 6.
      DATA(lv_rest) = lv_value+lv_start.
      DATA lv_end TYPE i.

      FIND FIRST OCCURRENCE OF `)`
        IN lv_rest
        MATCH OFFSET lv_end.

      IF sy-subrc = 0.

        DATA(lv_millis_text) = lv_rest(lv_end).

        " Ignorar un eventual offset +HHMM/-HHMM, igual que el
        " backend Node original que toma el epoch del /Date(...)/.
        FIND FIRST OCCURRENCE OF `+`
          IN lv_millis_text
          MATCH OFFSET DATA(lv_plus).

        IF sy-subrc = 0.
          lv_millis_text = lv_millis_text(lv_plus).
        ELSE.
          FIND FIRST OCCURRENCE OF `-`
            IN lv_millis_text
            MATCH OFFSET DATA(lv_minus).

          IF sy-subrc = 0 AND lv_minus > 0.
            lv_millis_text = lv_millis_text(lv_minus).
          ENDIF.
        ENDIF.

        TRY.
            rv_ms = CONV int8( lv_millis_text ).
          CATCH cx_sy_conversion_no_number
                cx_sy_conversion_overflow.
            CLEAR rv_ms.
        ENDTRY.

        RETURN.

      ENDIF.

    ENDIF.

    "------------------------------------------------------------
    " Fecha padron DDMMYYYY o fecha ISO YYYY-MM-DD...
    "------------------------------------------------------------
    DATA lv_date TYPE d.

    IF strlen( lv_value ) >= 10
       AND lv_value+4(1) = '-'
       AND lv_value+7(1) = '-'.

      lv_date =
           lv_value+0(4)
        && lv_value+5(2)
        && lv_value+8(2).

    ELSEIF strlen( lv_value ) = 8.

      lv_date =
           lv_value+4(4)
        && lv_value+2(2)
        && lv_value+0(2).

    ELSE.
      RETURN.
    ENDIF.

    IF lv_date IS INITIAL.
      RETURN.
    ENDIF.

    DATA(lv_days) = lv_date - CONV d( '19700101' ).

    rv_ms =
      CONV int8( lv_days ) * CONV int8( 86400000 ).

  ENDMETHOD.


  METHOD date_value_to_s4.

    CLEAR rv_date.

    DATA(lv_value) = iv_value.
    CONDENSE lv_value NO-GAPS.

    IF lv_value IS INITIAL.
      RETURN.
    ENDIF.

    "------------------------------------------------------------
    " ISO YYYY-MM-DD...
    "------------------------------------------------------------
    IF strlen( lv_value ) >= 10
       AND lv_value+4(1) = '-'
       AND lv_value+7(1) = '-'.

      rv_date = lv_value+0(10) && 'T00:00:00'.
      RETURN.

    ENDIF.

    "------------------------------------------------------------
    " Padron DDMMYYYY
    "------------------------------------------------------------
    IF strlen( lv_value ) = 8.
      rv_date = format_date_for_s4( iv_date = lv_value ).
      RETURN.
    ENDIF.

    "------------------------------------------------------------
    " OData V2 JSON /Date(epoch_ms)/
    "------------------------------------------------------------
    DATA(lv_ms) = date_value_to_epoch_ms( iv_value = lv_value ).

    IF lv_ms = 0.
      RETURN.
    ENDIF.

    DATA(lv_days_8) = lv_ms DIV CONV int8( 86400000 ).
    DATA(lv_days) = CONV i( lv_days_8 ).
    DATA lv_date TYPE d.

    lv_date = CONV d( '19700101' ) + lv_days.

    rv_date =
         lv_date+0(4)
      && '-'
      && lv_date+4(2)
      && '-'
      && lv_date+6(2)
      && 'T00:00:00'.

  ENDMETHOD.


  METHOD normalize_rate.

    rv_rate = iv_rate.

    CONDENSE rv_rate NO-GAPS.

    REPLACE ALL OCCURRENCES OF ','
      IN rv_rate
      WITH '.'.

    IF rv_rate IS INITIAL.
      rv_rate = '0'.
    ENDIF.

  ENDMETHOD.


  METHOD normalize_etag_for_proxy.

    rv_etag = iv_etag_header.

    DATA(lv_len) =
      strlen( rv_etag ).

    IF lv_len < 2.
      RETURN.
    ENDIF.

    " Client Proxy SET_IF_MATCH recibe el contenido del ETag,
    " no el header HTTP completo W/"...".
    IF lv_len >= 4
       AND rv_etag+0(3) = `W/"`.

      DATA(lv_last_pos) =
        lv_len - 1.

      IF rv_etag+lv_last_pos(1) = `"`.

        DATA(lv_inner_len) =
          lv_len - 4.

        rv_etag =
          rv_etag+3(lv_inner_len).

      ENDIF.

      RETURN.

    ENDIF.

    IF rv_etag+0(1) = `"`.

      lv_last_pos =
        lv_len - 1.

      IF rv_etag+lv_last_pos(1) = `"`.

        lv_inner_len =
          lv_len - 2.

        rv_etag =
          rv_etag+1(lv_inner_len).

      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD escape_odata_literal.

    rv_value = iv_value.

    REPLACE ALL OCCURRENCES OF `'`
      IN rv_value
      WITH `''`.

  ENDMETHOD.


  METHOD encode_filter.

    DATA:
      lv_length TYPE i,
      lv_offset TYPE i,
      lv_char   TYPE string.

    CLEAR rv_filter.

    lv_length = strlen( iv_filter ).

    "------------------------------------------------------------
    " Codificacion puntual del $filter.
    "
    " No usar REPLACE ALL OCCURRENCES OF space:
    " SPACE es de longitud fija y contiene solo blancos; en
    " busquedas ALL ABAP lo trata como patron vacio y puede lanzar
    " CX_SY_REPLACE_INFINITE_LOOP.
    "
    " Se recorre caracter por caracter para eliminar ese riesgo.
    "------------------------------------------------------------
    DO lv_length TIMES.

      lv_offset = sy-index - 1.
      lv_char = iv_filter+lv_offset(1).

      CASE lv_char.

        WHEN `%`.
          rv_filter = rv_filter && `%25`.

        WHEN ` `.
          rv_filter = rv_filter && `%20`.

        WHEN `'`.
          rv_filter = rv_filter && `%27`.

        WHEN `:`.
          rv_filter = rv_filter && `%3A`.

        WHEN OTHERS.
          rv_filter = rv_filter && lv_char.

      ENDCASE.

    ENDDO.

  ENDMETHOD.


  METHOD extract_field.

    CLEAR rv_value.

    "------------------------------------------------------------
    " 1. JSON OData V2
    "------------------------------------------------------------
    DATA(lv_json_marker) =
         `"`
      && iv_field
      && `":"`.

    DATA lv_offset TYPE i.

    FIND FIRST OCCURRENCE OF lv_json_marker
      IN iv_text
      MATCH OFFSET lv_offset.

    IF sy-subrc = 0.

      DATA(lv_start) =
        lv_offset + strlen( lv_json_marker ).

      DATA(lv_rest) =
        iv_text+lv_start.

      DATA lv_end TYPE i.

      FIND FIRST OCCURRENCE OF `"`
        IN lv_rest
        MATCH OFFSET lv_end.

      IF sy-subrc = 0.

        rv_value =
          lv_rest(lv_end).

        RETURN.

      ENDIF.

    ENDIF.

    "------------------------------------------------------------
    " 2. Atom XML OData V2
    "------------------------------------------------------------
    DATA(lv_open) =
         `<d:`
      && iv_field
      && `>`.

    DATA(lv_close) =
         `</d:`
      && iv_field
      && `>`.

    CLEAR lv_offset.

    FIND FIRST OCCURRENCE OF lv_open
      IN iv_text
      MATCH OFFSET lv_offset.

    IF sy-subrc <> 0.
      RETURN.
    ENDIF.

    DATA(lv_xml_start) =
      lv_offset + strlen( lv_open ).

    DATA(lv_xml_rest) =
      iv_text+lv_xml_start.

    CLEAR lv_end.

    FIND FIRST OCCURRENCE OF lv_close
      IN lv_xml_rest
      MATCH OFFSET lv_end.

    IF sy-subrc = 0.

      rv_value =
        lv_xml_rest(lv_end).

    ENDIF.

  ENDMETHOD.


  METHOD find_for_validity.

    DATA(lv_customer) =
      escape_odata_literal(
        iv_value = iv_customer
      ).

    DATA(lv_company) =
      escape_odata_literal(
        iv_value = iv_company_code
      ).

    DATA(lv_start_date) =
      format_date_for_s4(
        iv_date = iv_fecha_desde
      ).

    DATA(lv_end_date) =
      format_date_for_s4(
        iv_date = iv_fecha_hasta
      ).

    "------------------------------------------------------------
    " Copia funcional del Node original:
    " ConditionType + Customer + vigencia exacta
    " y $format=json.
    "------------------------------------------------------------
    DATA(lv_filter) =
         |ConditionType eq '{ zncl_pa_config=>gc_condition_type }'|
      && | and Customer eq '{ lv_customer }'|
      && | and ConditionValidityStartDate eq datetime'{ lv_start_date }'|
      && | and ConditionValidityEndDate eq datetime'{ lv_end_date }'|.

    IF zncl_pa_config=>gc_use_company_field = abap_true
       AND zncl_pa_config=>gc_company_field IS NOT INITIAL
       AND lv_company IS NOT INITIAL.

      lv_filter =
           lv_filter
        && | and { zncl_pa_config=>gc_company_field } eq '{ lv_company }'|.

    ENDIF.

    DATA(lv_encoded_filter) =
      encode_filter(
        iv_filter = lv_filter
      ).

    DATA(lv_path) =
         '/A_SlsPrcgCndnRecdValidity'
      && '?$filter='
      && lv_encoded_filter
      && '&$format=json'.

    DATA(ls_http) =
      execute(
        iv_method = if_web_http_client=>get
        iv_path   = lv_path
        iv_accept = 'application/json'
      ).

    rs_result-status_code = ls_http-status_code.
    rs_result-reason      = ls_http-reason.
    rs_result-body        = ls_http-body.

    IF ls_http-status_code <> 200.
      rs_result-success = abap_false.
      RETURN.
    ENDIF.

    rs_result-success = abap_true.

    rs_result-condition_record =
      extract_field(
        iv_text  = ls_http-body
        iv_field = 'ConditionRecord'
      ).

    IF rs_result-condition_record IS INITIAL.
      rs_result-exists = abap_false.
    ELSE.
      rs_result-exists = abap_true.
    ENDIF.

  ENDMETHOD.


  METHOD find_overlap.

    DATA(lv_customer) =
      escape_odata_literal(
        iv_value = iv_customer
      ).

    DATA(lv_company) =
      escape_odata_literal(
        iv_value = iv_company_code
      ).

    DATA(lv_new_start_ms) =
      date_value_to_epoch_ms(
        iv_value = iv_fecha_desde
      ).

    DATA(lv_new_end_ms) =
      date_value_to_epoch_ms(
        iv_value = iv_fecha_hasta
      ).

    "------------------------------------------------------------
    " COPIA FUNCIONAL DEL BACKEND CF ORIGINAL
    "
    " El Node NO filtraba solapamientos con lt/ge en OData.
    " Solo consultaba:
    "   ConditionType + Customer (+ sociedad custom si aplica)
    "   $format=json
    "
    " Luego evaluaba localmente:
    "   existingStart < newStart
    "   existingEnd   >= newStart
    "   existingStart <= newEnd
    "------------------------------------------------------------
    DATA(lv_filter) =
         |ConditionType eq '{ zncl_pa_config=>gc_condition_type }'|
      && | and Customer eq '{ lv_customer }'|.

    IF zncl_pa_config=>gc_use_company_field = abap_true
       AND zncl_pa_config=>gc_company_field IS NOT INITIAL
       AND lv_company IS NOT INITIAL.

      lv_filter =
           lv_filter
        && | and { zncl_pa_config=>gc_company_field } eq '{ lv_company }'|.

    ENDIF.

    DATA(lv_encoded_filter) =
      encode_filter(
        iv_filter = lv_filter
      ).

    DATA(lv_path) =
         '/A_SlsPrcgCndnRecdValidity'
      && '?$filter='
      && lv_encoded_filter
      && '&$format=json'.

    DATA(ls_http) =
      execute(
        iv_method = if_web_http_client=>get
        iv_path   = lv_path
        iv_accept = 'application/json'
      ).

    rs_result = ls_http.

    IF ls_http-status_code <> 200.
      RETURN.
    ENDIF.

    " Sin overlap: BODY vacío. CLOSE_OVERLAPS lo interpreta como
    " lista vacía, igual que el array [] del Node original.
    CLEAR rs_result-body.

    IF lv_new_start_ms = 0 OR lv_new_end_ms = 0.
      RETURN.
    ENDIF.

    "------------------------------------------------------------
    " Cada fila OData V2 JSON contiene __metadata.
    " Separamos las filas y devolvemos la primera que cumple la
    " misma condición de isPreviousOverlappingCondition() del Node.
    " CLOSE_OVERLAPS vuelve a consultar después de cada PATCH hasta
    " que no quede ninguna, obteniendo el mismo resultado final.
    "------------------------------------------------------------
    DATA lt_rows TYPE STANDARD TABLE OF string WITH EMPTY KEY.

    SPLIT ls_http-body
      AT `"__metadata":`
      INTO TABLE lt_rows.

    LOOP AT lt_rows INTO DATA(lv_part).

      IF lv_part IS INITIAL.
        CONTINUE.
      ENDIF.

      DATA(lv_row) = `"__metadata":` && lv_part.

      DATA(lv_condition_record) =
        extract_field(
          iv_text  = lv_row
          iv_field = 'ConditionRecord'
        ).

      IF lv_condition_record IS INITIAL.
        CONTINUE.
      ENDIF.

      DATA(lv_existing_start) =
        extract_field(
          iv_text  = lv_row
          iv_field = 'ConditionValidityStartDate'
        ).

      DATA(lv_existing_end) =
        extract_field(
          iv_text  = lv_row
          iv_field = 'ConditionValidityEndDate'
        ).

      DATA(lv_existing_start_ms) =
        date_value_to_epoch_ms(
          iv_value = lv_existing_start
        ).

      DATA(lv_existing_end_ms) =
        date_value_to_epoch_ms(
          iv_value = lv_existing_end
        ).

      IF lv_existing_start_ms = 0
         OR lv_existing_end_ms = 0.
        CONTINUE.
      ENDIF.

      IF lv_existing_start_ms < lv_new_start_ms
         AND lv_existing_end_ms >= lv_new_start_ms
         AND lv_existing_start_ms <= lv_new_end_ms.

        rs_result-body = lv_row.
        RETURN.

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD close_overlaps.

    rs_result-success = abap_true.

    DATA(lv_new_end) =
      previous_day_for_s4(
        iv_date = iv_fecha_desde
      ).

    IF lv_new_end IS INITIAL.
      rs_result-success = abap_false.
      rs_result-reason  = 'Fecha desde invalida para cierre de Z902'.
      RETURN.
    ENDIF.

    IF strlen( lv_new_end ) < 10.
      rs_result-success = abap_false.
      rs_result-reason  = 'Formato de fecha invalido para cierre de Z902'.
      RETURN.
    ENDIF.

    DATA lv_new_end_dats TYPE datn.

    lv_new_end_dats =
         lv_new_end+0(4)
      && lv_new_end+5(2)
      && lv_new_end+8(2).

    " FIND_OVERLAP conserva la lógica del backend CF original.
    " La escritura de la nueva fecha se hace mediante Client Proxy.
    DO 100 TIMES.

      DATA(ls_overlap) =
        find_overlap(
          iv_customer     = iv_customer
          iv_fecha_desde  = iv_fecha_desde
          iv_fecha_hasta  = iv_fecha_hasta
          iv_company_code = iv_company_code
        ).

      rs_result-status_code = ls_overlap-status_code.
      rs_result-reason      = ls_overlap-reason.
      rs_result-body        = ls_overlap-body.

      IF ls_overlap-status_code <> 200.
        rs_result-success = abap_false.
        RETURN.
      ENDIF.

      DATA(lv_condition_record) =
        extract_field(
          iv_text  = ls_overlap-body
          iv_field = 'ConditionRecord'
        ).

      IF lv_condition_record IS INITIAL.
        rs_result-success = abap_true.
        RETURN.
      ENDIF.

      DATA(lv_old_end_raw) =
        extract_field(
          iv_text  = ls_overlap-body
          iv_field = 'ConditionValidityEndDate'
        ).

      DATA(lv_old_end) =
        date_value_to_s4(
          iv_value = lv_old_end_raw
        ).

      IF lv_old_end IS INITIAL OR strlen( lv_old_end ) < 10.
        rs_result-success = abap_false.
        rs_result-reason =
          |No se pudo leer fin de vigencia Z902 { lv_condition_record }|.
        RETURN.
      ENDIF.

      DATA lv_old_end_dats TYPE datn.

      lv_old_end_dats =
           lv_old_end+0(4)
        && lv_old_end+5(2)
        && lv_old_end+8(2).

      " Leer ETag actual de la entidad exacta. El Client Proxy espera
      " el contenido normalizado, no el header W/\"...\" completo.
      DATA(lv_read_path) =
           `/A_SlsPrcgCndnRecdValidity(ConditionRecord='`
        && lv_condition_record
        && `',ConditionValidityEndDate=datetime'`
        && lv_old_end
        && `')`.

      DATA(ls_read) =
        execute(
          iv_method = if_web_http_client=>get
          iv_path   = lv_read_path
        ).

      IF ls_read-status_code <> 200.
        rs_result-success     = abap_false.
        rs_result-status_code = ls_read-status_code.
        rs_result-reason      = ls_read-reason.
        rs_result-body        = ls_read-body.
        RETURN.
      ENDIF.

      DATA(lv_etag) =
        normalize_etag_for_proxy(
          iv_etag_header = ls_read-etag
        ).

      IF lv_etag IS INITIAL.
        rs_result-success     = abap_false.
        rs_result-status_code = 0.
        rs_result-reason =
          |No se pudo obtener ETag de vigencia Z902 { lv_condition_record }|.
        RETURN.
      ENDIF.

      DATA lo_http_client TYPE REF TO if_web_http_client.

      TRY.

          DATA(lo_destination) =
            cl_http_destination_provider=>create_by_comm_arrangement(
              comm_scenario  = 'ZNCS_PA_PRICING_OUT'
              comm_system_id = 'Z_PA_PRICING_SELF'
              service_id     = 'ZNPA_PRICING_REST'
            ).

          lo_http_client =
            cl_web_http_client_manager=>create_by_http_destination(
              lo_destination
            ).

          DATA(lo_client_proxy) =
            /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
              EXPORTING
                is_proxy_model_key = VALUE #(
                  repository_id       = 'DEFAULT'
                  proxy_model_id      = 'ZNSCM_PA_PRICING'
                  proxy_model_version = '0001'
                )
                io_http_client           = lo_http_client
                iv_relative_service_root = '/'
            ).

          DATA(ls_key) =
            VALUE ty_validity_key(
              condition_record           = lv_condition_record
              condition_validity_end_dat = lv_old_end_dats
            ).

          DATA(lo_entity_set) =
            lo_client_proxy->create_resource_for_entity_set(
              'A_SLS_PRCG_CNDN_RECD_VALID'
            ).

          DATA(lo_resource) =
            lo_entity_set->navigate_with_key(
              ls_key
            ).

          DATA(lo_update_request) =
            lo_resource->create_request_for_update(
              /iwbep/if_cp_request_update=>gcs_update_semantic-patch
            ).

          lo_update_request->set_if_match(
            lv_etag
          ).

          DATA(ls_business_data) =
            VALUE znscm_pa_pricing=>tys_a_sls_prcg_cndn_recd_val_2(
              condition_record           = lv_condition_record
              condition_validity_end_dat = lv_new_end_dats
            ).

          lo_update_request->set_business_data(
            is_business_data = ls_business_data
            it_provided_property = VALUE #(
              ( `CONDITION_VALIDITY_END_DAT` )
            )
          ).

          lo_update_request->execute( ).

          rs_result-status_code = 204.
          rs_result-reason      = 'No Content via OData Client Proxy'.
          CLEAR rs_result-body.

          lo_http_client->close( ).
          CLEAR lo_http_client.

        CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).

          IF lo_http_client IS BOUND.
            TRY.
                lo_http_client->close( ).
              CATCH cx_web_http_client_error.
            ENDTRY.
          ENDIF.

          rs_result-success     = abap_false.
          rs_result-status_code = lx_remote->http_status_code.
          rs_result-reason      = lx_remote->get_text( ).
          rs_result-body        = lx_remote->http_error_body.
          RETURN.

        CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).

          IF lo_http_client IS BOUND.
            TRY.
                lo_http_client->close( ).
              CATCH cx_web_http_client_error.
            ENDTRY.
          ENDIF.

          rs_result-success     = abap_false.
          rs_result-status_code = 0.
          rs_result-reason      = lx_gateway->get_text( ).
          rs_result-body        = lx_gateway->get_text( ).
          RETURN.

        CATCH cx_http_dest_provider_error INTO DATA(lx_destination).

          rs_result-success     = abap_false.
          rs_result-status_code = 0.
          rs_result-reason      = lx_destination->get_text( ).
          rs_result-body        = lx_destination->get_text( ).
          RETURN.

        CATCH cx_web_http_client_error INTO DATA(lx_http).

          rs_result-success     = abap_false.
          rs_result-status_code = 0.
          rs_result-reason      = lx_http->get_text( ).
          rs_result-body        = lx_http->get_text( ).
          RETURN.

      ENDTRY.

      rs_result-closed += 1.

    ENDDO.

    rs_result-success = abap_false.
    rs_result-reason  = 'Se alcanzo el limite de cierres de vigencia Z902'.

  ENDMETHOD.


  METHOD create_condition.

    CLEAR rs_result.

    "------------------------------------------------------------
    " CREATE mediante OData Client Proxy / ZNSCM_PA_PRICING.
    "
    " Los READ siguen usando HTTP con cliente nuevo.
    " El CREATE deja CSRF/cookies/sesion en manos del Client Proxy.
    "------------------------------------------------------------

    " Este SCM fue generado en SEIDOR sin campo custom de sociedad.
    IF zncl_pa_config=>gc_use_company_field = abap_true.

      rs_result-status_code = 0.
      rs_result-reason =
        'ZNSCM_PA_PRICING no contiene el campo custom de sociedad; regenerar/adaptar SCM para este cliente'.
      RETURN.

    ENDIF.

    IF strlen( iv_fecha_desde ) <> 8
       OR strlen( iv_fecha_hasta ) <> 8.

      rs_result-status_code = 0.
      rs_result-reason = 'Formato de vigencia invalido para CREATE Z902'.
      RETURN.

    ENDIF.

    DATA lv_start_dats TYPE datn.
    DATA lv_end_dats   TYPE datn.

    lv_start_dats =
         iv_fecha_desde+4(4)
      && iv_fecha_desde+2(2)
      && iv_fecha_desde+0(2).

    lv_end_dats =
         iv_fecha_hasta+4(4)
      && iv_fecha_hasta+2(2)
      && iv_fecha_hasta+0(2).

    DATA(lv_rate) =
      normalize_rate(
        iv_rate = iv_alicuota
      ).

    DATA lo_http_client TYPE REF TO if_web_http_client.

    TRY.

        DATA(lo_destination) =
          cl_http_destination_provider=>create_by_comm_arrangement(
            comm_scenario  = 'ZNCS_PA_PRICING_OUT'
            comm_system_id = 'Z_PA_PRICING_SELF'
            service_id     = 'ZNPA_PRICING_REST'
          ).

        lo_http_client =
          cl_web_http_client_manager=>create_by_http_destination(
            lo_destination
          ).

        DATA(lo_client_proxy) =
          /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
            EXPORTING
              is_proxy_model_key = VALUE #(
                repository_id       = 'DEFAULT'
                proxy_model_id      = 'ZNSCM_PA_PRICING'
                proxy_model_version = '0001'
              )
              io_http_client           = lo_http_client
              iv_relative_service_root = '/'
          ).

        DATA(lo_resource) =
          lo_client_proxy->create_resource_for_entity_set(
            'A_SLS_PRCG_CONDITION_RECOR'
          ).

        DATA(lo_request) =
          lo_resource->create_request_for_create( ).

        DATA(lo_root_node) =
          lo_request->create_data_descripton_node( ).

        lo_root_node->set_properties(
          VALUE #(
            ( `CONDITION_TABLE` )
            ( `CONDITION_TYPE` )
            ( `CONDITION_RATE_VALUE` )
            ( `CONDITION_RATE_VALUE_UNIT` )
            ( `CONDITION_TAX_CODE` )
          )
        ).

        DATA(lo_validity_node) =
          lo_root_node->add_child(
            'TO_SLS_PRCG_CNDN_RECD_VALI'
          ).

        lo_validity_node->set_properties(
          VALUE #(
            ( `CONDITION_VALIDITY_START_D` )
            ( `CONDITION_VALIDITY_END_DAT` )
            ( `CONDITION_TYPE` )
            ( `COUNTRY` )
            ( `CUSTOMER` )
          )
        ).

        DATA ls_deep_data TYPE ty_deep_create.
        CLEAR ls_deep_data.

        ls_deep_data-condition_table =
          zncl_pa_config=>gc_condition_table.

        ls_deep_data-condition_type =
          zncl_pa_config=>gc_condition_type.

        ls_deep_data-condition_rate_value =
          lv_rate.

        ls_deep_data-condition_rate_value_unit =
          zncl_pa_config=>gc_rate_unit.

        ls_deep_data-condition_tax_code =
          zncl_pa_config=>gc_tax_code.

        APPEND VALUE #(
          condition_validity_start_d = lv_start_dats
          condition_validity_end_dat = lv_end_dats
          condition_type             = zncl_pa_config=>gc_condition_type
          country                    = zncl_pa_config=>gc_country
          customer                   = iv_customer
        )
        TO ls_deep_data-to_sls_prcg_cndn_recd_vali.

        lo_request->set_deep_business_data(
          is_business_data    = ls_deep_data
          io_data_description = lo_root_node
        ).

        DATA(lo_response) =
          lo_request->execute( ).

        DATA ls_after TYPE znscm_pa_pricing=>tys_a_sls_prcg_condition_rec_3.
        CLEAR ls_after.

        lo_response->get_business_data(
          IMPORTING
            es_business_data = ls_after
        ).

        IF lo_http_client IS BOUND.
          TRY.
              lo_http_client->close( ).
            CATCH cx_web_http_client_error.
          ENDTRY.
          CLEAR lo_http_client.
        ENDIF.

        " En una creación correcta el Client Proxy no expone aquí el
        " HTTP status de la misma forma que nuestro wrapper manual.
        " 201 se usa como resultado funcional de CREATE exitoso.
        rs_result-status_code = 201.
        rs_result-reason      = 'Created via OData Client Proxy'.

        IF ls_after-condition_record IS NOT INITIAL.

          rs_result-body =
               `{"ConditionRecord":"`
            && ls_after-condition_record
            && `"}`.

        ELSE.

          " Fallback READ: además cubre respuestas sin after-image.
          DATA(ls_verify) =
            find_for_validity(
              iv_customer     = iv_customer
              iv_fecha_desde  = iv_fecha_desde
              iv_fecha_hasta  = iv_fecha_hasta
              iv_company_code = iv_company_code
            ).

          IF ls_verify-success = abap_true
             AND ls_verify-exists = abap_true.

            rs_result-body =
                 `{"ConditionRecord":"`
              && ls_verify-condition_record
              && `"}`.

          ENDIF.

        ENDIF.

      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).

        IF lo_http_client IS BOUND.
          TRY.
              lo_http_client->close( ).
            CATCH cx_web_http_client_error.
          ENDTRY.
          CLEAR lo_http_client.
        ENDIF.

        " Si el POST llegó a ejecutarse pero falló la lectura de la
        " respuesta, verificar si la condición quedó creada.
        TRY.

            DATA(ls_verify_remote) =
              find_for_validity(
                iv_customer     = iv_customer
                iv_fecha_desde  = iv_fecha_desde
                iv_fecha_hasta  = iv_fecha_hasta
                iv_company_code = iv_company_code
              ).

            IF ls_verify_remote-success = abap_true
               AND ls_verify_remote-exists = abap_true.

              rs_result-status_code = 201.
              rs_result-reason =
                'Created via OData Client Proxy; confirmado por READ posterior'.
              rs_result-body =
                   `{"ConditionRecord":"`
                && ls_verify_remote-condition_record
                && `"}`.
              RETURN.

            ENDIF.

          CATCH cx_web_http_client_error.
        ENDTRY.

        rs_result-status_code = 0.
        rs_result-reason      = lx_remote->get_text( ).
        rs_result-body        = lx_remote->get_text( ).

      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).

        IF lo_http_client IS BOUND.
          TRY.
              lo_http_client->close( ).
            CATCH cx_web_http_client_error.
          ENDTRY.
          CLEAR lo_http_client.
        ENDIF.

        " Este fallback es importante: durante la prueba real vimos
        " que un error local posterior podía coexistir con un CREATE
        " ya persistido en el servicio remoto.
        TRY.

            DATA(ls_verify_gateway) =
              find_for_validity(
                iv_customer     = iv_customer
                iv_fecha_desde  = iv_fecha_desde
                iv_fecha_hasta  = iv_fecha_hasta
                iv_company_code = iv_company_code
              ).

            IF ls_verify_gateway-success = abap_true
               AND ls_verify_gateway-exists = abap_true.

              rs_result-status_code = 201.
              rs_result-reason =
                'Created via OData Client Proxy; confirmado por READ posterior'.
              rs_result-body =
                   `{"ConditionRecord":"`
                && ls_verify_gateway-condition_record
                && `"}`.
              RETURN.

            ENDIF.

          CATCH cx_web_http_client_error.
        ENDTRY.

        rs_result-status_code = 0.
        rs_result-reason      = lx_gateway->get_text( ).
        rs_result-body        = lx_gateway->get_text( ).

      CATCH cx_http_dest_provider_error INTO DATA(lx_destination).

        rs_result-status_code = 0.
        rs_result-reason      = lx_destination->get_text( ).
        rs_result-body        = lx_destination->get_text( ).

      CATCH cx_web_http_client_error INTO DATA(lx_http).

        rs_result-status_code = 0.
        rs_result-reason      = lx_http->get_text( ).
        rs_result-body        = lx_http->get_text( ).

    ENDTRY.

    IF lo_http_client IS BOUND.
      TRY.
          lo_http_client->close( ).
        CATCH cx_web_http_client_error.
      ENDTRY.
    ENDIF.

  ENDMETHOD.


  METHOD update_condition.

    CLEAR rs_result.

    DATA(lv_path) =
         `/A_SlsPrcgConditionRecord('`
      && iv_condition_record
      && `')`.

    " Leer ETag actual mediante GET. Los READ continúan usando el
    " helper HTTP ya validado; el PATCH se ejecuta por Client Proxy.
    DATA(ls_read) =
      execute(
        iv_method = if_web_http_client=>get
        iv_path   = lv_path
      ).

    IF ls_read-status_code <> 200.
      rs_result = ls_read.
      RETURN.
    ENDIF.

    DATA(lv_etag) =
      normalize_etag_for_proxy(
        iv_etag_header = ls_read-etag
      ).

    IF lv_etag IS INITIAL.
      rs_result-status_code = 0.
      rs_result-reason =
        |No se pudo obtener ETag de Z902 { iv_condition_record }|.
      RETURN.
    ENDIF.

    DATA(lv_rate) =
      normalize_rate(
        iv_rate = iv_alicuota
      ).

    DATA lo_http_client TYPE REF TO if_web_http_client.

    TRY.

        DATA(lo_destination) =
          cl_http_destination_provider=>create_by_comm_arrangement(
            comm_scenario  = 'ZNCS_PA_PRICING_OUT'
            comm_system_id = 'Z_PA_PRICING_SELF'
            service_id     = 'ZNPA_PRICING_REST'
          ).

        lo_http_client =
          cl_web_http_client_manager=>create_by_http_destination(
            lo_destination
          ).

        DATA(lo_client_proxy) =
          /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
            EXPORTING
              is_proxy_model_key = VALUE #(
                repository_id       = 'DEFAULT'
                proxy_model_id      = 'ZNSCM_PA_PRICING'
                proxy_model_version = '0001'
              )
              io_http_client           = lo_http_client
              iv_relative_service_root = '/'
          ).

        DATA(ls_key) =
          VALUE ty_root_key(
            condition_record = iv_condition_record
          ).

        DATA(lo_entity_set) =
          lo_client_proxy->create_resource_for_entity_set(
            'A_SLS_PRCG_CONDITION_RECOR'
          ).

        DATA(lo_resource) =
          lo_entity_set->navigate_with_key(
            ls_key
          ).

        DATA(lo_update_request) =
          lo_resource->create_request_for_update(
            /iwbep/if_cp_request_update=>gcs_update_semantic-patch
          ).

        lo_update_request->set_if_match(
          lv_etag
        ).

        DATA(ls_business_data) =
          VALUE znscm_pa_pricing=>tys_a_sls_prcg_condition_rec_3(
            condition_record          = iv_condition_record
            condition_rate_value      = lv_rate
            condition_rate_value_unit = zncl_pa_config=>gc_rate_unit
            condition_tax_code        = zncl_pa_config=>gc_tax_code
          ).

        lo_update_request->set_business_data(
          is_business_data = ls_business_data
          it_provided_property = VALUE #(
            ( `CONDITION_RATE_VALUE` )
            ( `CONDITION_RATE_VALUE_UNIT` )
            ( `CONDITION_TAX_CODE` )
          )
        ).

        lo_update_request->execute( ).

        rs_result-status_code = 204.
        rs_result-reason      = 'No Content via OData Client Proxy'.
        CLEAR rs_result-body.

        lo_http_client->close( ).
        CLEAR lo_http_client.

      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).

        IF lo_http_client IS BOUND.
          TRY.
              lo_http_client->close( ).
            CATCH cx_web_http_client_error.
          ENDTRY.
        ENDIF.

        rs_result-status_code = lx_remote->http_status_code.
        rs_result-reason      = lx_remote->get_text( ).
        rs_result-body        = lx_remote->http_error_body.

      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).

        IF lo_http_client IS BOUND.
          TRY.
              lo_http_client->close( ).
            CATCH cx_web_http_client_error.
          ENDTRY.
        ENDIF.

        rs_result-status_code = 0.
        rs_result-reason      = lx_gateway->get_text( ).
        rs_result-body        = lx_gateway->get_text( ).

      CATCH cx_http_dest_provider_error INTO DATA(lx_destination).

        rs_result-status_code = 0.
        rs_result-reason      = lx_destination->get_text( ).
        rs_result-body        = lx_destination->get_text( ).

      CATCH cx_web_http_client_error INTO DATA(lx_http).

        rs_result-status_code = 0.
        rs_result-reason      = lx_http->get_text( ).
        rs_result-body        = lx_http->get_text( ).

    ENDTRY.

  ENDMETHOD.


  METHOD process_condition.

    CLEAR rs_result.

    "------------------------------------------------------------
    " 1. Buscar condición exacta:
    "    Z902 + Customer + Desde + Hasta
    "    + Sociedad solo si ZNCL_PA_CONFIG lo habilita
    "------------------------------------------------------------
    DATA(ls_find) =
      find_for_validity(
        iv_customer     = iv_customer
        iv_fecha_desde  = iv_fecha_desde
        iv_fecha_hasta  = iv_fecha_hasta
        iv_company_code = iv_company_code
      ).

    rs_result-status_code = ls_find-status_code.
    rs_result-reason      = ls_find-reason.
    rs_result-body        = ls_find-body.

    IF ls_find-success = abap_false.
      rs_result-success = abap_false.
      rs_result-action  = 'E'.
      RETURN.
    ENDIF.

    "------------------------------------------------------------
    " 2. Existe misma vigencia -> UPDATE
    "------------------------------------------------------------
    IF ls_find-exists = abap_true.

      rs_result-success          = abap_true.
      rs_result-action           = 'U'.
      rs_result-condition_record = ls_find-condition_record.

      IF iv_execute_write = abap_false.
        rs_result-reason = 'DRY-RUN Z902 UPDATE'.
        RETURN.
      ENDIF.

      DATA(ls_update) =
        update_condition(
          iv_condition_record = ls_find-condition_record
          iv_alicuota         = iv_alicuota
        ).

      rs_result-status_code = ls_update-status_code.
      rs_result-reason      = ls_update-reason.
      rs_result-body        = ls_update-body.

      IF ls_update-status_code >= 200
         AND ls_update-status_code < 300.

        rs_result-success = abap_true.
        rs_result-applied = abap_true.

      ELSE.

        rs_result-success = abap_false.
        rs_result-action  = 'E'.

      ENDIF.

      RETURN.

    ENDIF.

    "------------------------------------------------------------
    " 3. No existe misma vigencia -> CREATE
    "------------------------------------------------------------
    rs_result-success = abap_true.
    rs_result-action  = 'C'.

    IF iv_execute_write = abap_false.
      rs_result-reason = 'DRY-RUN Z902 CREATE'.
      RETURN.
    ENDIF.

    "------------------------------------------------------------
    " 4. Antes del CREATE cerrar vigencias previas solapadas
    "    a fecha_desde - 1 día.
    "    La escritura del cierre usa OData Client Proxy.
    "------------------------------------------------------------
    DATA(ls_close) =
      close_overlaps(
        iv_customer     = iv_customer
        iv_fecha_desde  = iv_fecha_desde
        iv_fecha_hasta  = iv_fecha_hasta
        iv_company_code = iv_company_code
      ).

    rs_result-closed_count = ls_close-closed.

    IF ls_close-success = abap_false.

      rs_result-success     = abap_false.
      rs_result-action      = 'E'.
      rs_result-status_code = ls_close-status_code.
      rs_result-reason      = ls_close-reason.
      rs_result-body        = ls_close-body.
      RETURN.

    ENDIF.

    "------------------------------------------------------------
    " 5. Crear nueva condición Z902 mediante Client Proxy
    "------------------------------------------------------------
    DATA(ls_create) =
      create_condition(
        iv_customer     = iv_customer
        iv_fecha_desde  = iv_fecha_desde
        iv_fecha_hasta  = iv_fecha_hasta
        iv_alicuota     = iv_alicuota
        iv_company_code = iv_company_code
      ).

    rs_result-status_code = ls_create-status_code.
    rs_result-reason      = ls_create-reason.
    rs_result-body        = ls_create-body.

    IF ls_create-status_code >= 200
       AND ls_create-status_code < 300.

      rs_result-success = abap_true.
      rs_result-applied = abap_true.

      rs_result-condition_record =
        extract_field(
          iv_text  = ls_create-body
          iv_field = 'ConditionRecord'
        ).

    ELSE.

      rs_result-success = abap_false.
      rs_result-action  = 'E'.

    ENDIF.

  ENDMETHOD.


  METHOD close.

    " No hay cliente persistente que cerrar. Se conserva el método
    " público para no romper a los consumidores existentes.

  ENDMETHOD.
ENDCLASS.
