CLASS zncl_pa_test_create_job DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
protected section.
private section.
ENDCLASS.



CLASS ZNCL_PA_TEST_CREATE_JOB IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lv_job_id TYPE c LENGTH 50.

    lv_job_id = |ARBA_TEST_{ sy-datum }_{ sy-uzeit }|.

    out->write( |ARBA - TEST CREATE JOB| ).
    out->write( |JobId: { lv_job_id }| ).
    out->write( |Antes de MODIFY ENTITIES| ).

    MODIFY ENTITIES OF zni_pa_jobs
      ENTITY Job
        CREATE FIELDS (
          JobId
          Status
          Message
          FileName
        )
        WITH VALUE #(
          (
            %cid     = 'JOB_TEST'
            JobId    = lv_job_id
            Status   = 'NEW'
            Message  = 'Carga ARBA iniciada desde test EML'
            FileName = 'test_arba.txt'
          )
        )
      MAPPED   DATA(lt_mapped)
      FAILED   DATA(lt_failed)
      REPORTED DATA(lt_reported).

    out->write( |MODIFY ENTITIES OK| ).

    IF lt_failed IS NOT INITIAL.
      out->write( |MODIFY devolvio FAILED| ).
    ENDIF.

    IF lt_reported IS NOT INITIAL.
      out->write( |MODIFY devolvio REPORTED| ).
    ENDIF.

    out->write( |Antes de COMMIT ENTITIES| ).

    COMMIT ENTITIES.

    out->write( |COMMIT ENTITIES OK| ).

  ENDMETHOD.
ENDCLASS.
