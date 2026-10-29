CLASS lhc_Job DEFINITION
  INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_global_authorizations
      FOR GLOBAL AUTHORIZATION
      IMPORTING
        REQUEST requested_authorizations FOR Job
      RESULT result.

    METHODS StartProcessing
      FOR MODIFY
      IMPORTING
        keys FOR ACTION Job~StartProcessing
      RESULT result.

ENDCLASS.


CLASS lhc_Job IMPLEMENTATION.

  METHOD get_global_authorizations.

    IF requested_authorizations-%create = if_abap_behv=>mk-on.
      result-%create = if_abap_behv=>auth-allowed.
    ENDIF.

    IF requested_authorizations-%update = if_abap_behv=>mk-on.
      result-%update = if_abap_behv=>auth-allowed.
    ENDIF.

    IF requested_authorizations-%delete = if_abap_behv=>mk-on.
      result-%delete = if_abap_behv=>auth-allowed.
    ENDIF.

    IF requested_authorizations-%action-StartProcessing =
       if_abap_behv=>mk-on.
      result-%action-StartProcessing =
        if_abap_behv=>auth-allowed.
    ENDIF.

  ENDMETHOD.


  METHOD StartProcessing.

    "------------------------------------------------------------
    " 1. Marcar el Job como pendiente de procesamiento
    "
    " Todavía NO procesa nada aquí.
    " El procesamiento real se ejecutará mediante bgMC.
    "------------------------------------------------------------
    MODIFY ENTITIES OF zni_pa_jobs IN LOCAL MODE
      ENTITY Job
        UPDATE FIELDS ( Status Message ErrorText )
        WITH VALUE #(
          FOR key IN keys
          (
            %tky      = key-%tky
            Status    = 'PENDING'
            Message   = 'Procesamiento ARBA encolado'
            ErrorText = ''
          )
        )
      FAILED DATA(lt_failed)
      REPORTED DATA(lt_reported).


    "------------------------------------------------------------
    " 2. Devolver el Job actualizado
    "------------------------------------------------------------
    READ ENTITIES OF zni_pa_jobs IN LOCAL MODE
      ENTITY Job
        ALL FIELDS
        WITH CORRESPONDING #( keys )
      RESULT DATA(lt_jobs).


    result = VALUE #(
      FOR ls_job IN lt_jobs
      (
        %tky   = ls_job-%tky
        %param = CORRESPONDING #( ls_job )
      )
    ).

  ENDMETHOD.

ENDCLASS.



CLASS lsc_ZI_PA_JOBS DEFINITION
  INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.
    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.



CLASS lsc_ZI_PA_JOBS IMPLEMENTATION.

  METHOD save_modified.

    "------------------------------------------------------------
    " Sólo nos interesan modificaciones de Job.
    "------------------------------------------------------------
    IF update-Job IS INITIAL.
      RETURN.
    ENDIF.


    LOOP AT update-Job ASSIGNING FIELD-SYMBOL(<ls_job>).

      "----------------------------------------------------------
      " Protección:
      "
      " No lanzar background por cualquier UPDATE.
      " Sólo cuando Status fue modificado explícitamente.
      "----------------------------------------------------------
      IF <ls_job>-%control-Status <> if_abap_behv=>mk-on.
        CONTINUE.
      ENDIF.


      "----------------------------------------------------------
      " Sólo StartProcessing coloca el estado PENDING.
      "----------------------------------------------------------
      IF <ls_job>-Status <> 'PENDING'.
        CONTINUE.
      ENDIF.


      "----------------------------------------------------------
      " Debemos tener el UUID persistente del Job.
      "----------------------------------------------------------
      IF <ls_job>-Id IS INITIAL.
        CONTINUE.
      ENDIF.


      "----------------------------------------------------------
      " Crear proceso bgMC
      "----------------------------------------------------------
      DATA(lo_bgmc) =
        cl_bgmc_process_factory=>get_default( )->create( ).


      lo_bgmc->set_operation_tx_uncontrolled(
        NEW zncl_pa_job(
          iv_id = <ls_job>-Id
        )
      ).


      lo_bgmc->save_for_execution( ).

    ENDLOOP.

  ENDMETHOD.


  METHOD cleanup_finalize.

  ENDMETHOD.

ENDCLASS.
