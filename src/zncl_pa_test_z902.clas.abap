CLASS zncl_pa_test_z902 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.



CLASS ZNCL_PA_TEST_Z902 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS:
      lc_customer     TYPE string VALUE '0000104020',
      lc_fecha_desde  TYPE string VALUE '01072026',
      lc_fecha_hasta  TYPE string VALUE '31072026',
      lc_alicuota     TYPE string VALUE '5,00',
      lc_company_code TYPE string VALUE '02AR'.

    DATA lo_api TYPE REF TO zncl_pa_pricing_api.

    out->write(
      '=============================================='
    ).
    out->write(
      'ARBA - TEST Z902 - UN SOLO CUSTOMER'
    ).
    out->write(
      '=============================================='
    ).

    out->write(
      |CUSTOMER    : { lc_customer }|
    ).
    out->write(
      |FECHA DESDE : { lc_fecha_desde }|
    ).
    out->write(
      |FECHA HASTA : { lc_fecha_hasta }|
    ).
    out->write(
      |ALICUOTA    : { lc_alicuota }|
    ).
    out->write(
      |SOCIEDAD    : { lc_company_code }|
    ).

    out->write(
      '--------------- Z902 WRITE ----------------'
    ).

    TRY.

        lo_api =
          NEW zncl_pa_pricing_api( ).

        DATA(ls_result) =
          lo_api->process_condition(
            iv_customer      = lc_customer
            iv_fecha_desde   = lc_fecha_desde
            iv_fecha_hasta   = lc_fecha_hasta
            iv_alicuota      = lc_alicuota
            iv_company_code  = lc_company_code
            iv_execute_write = abap_true
          ).

        out->write(
          |SUCCESS          : { ls_result-success }|
        ).

        out->write(
          |ACTION           : { ls_result-action }|
        ).

        out->write(
          |APPLIED          : { ls_result-applied }|
        ).

        out->write(
          |STATUS CODE      : { ls_result-status_code }|
        ).

        out->write(
          |CONDITION RECORD : { ls_result-condition_record }|
        ).

        out->write(
          |CLOSED COUNT     : { ls_result-closed_count }|
        ).

        out->write(
          |REASON           : { ls_result-reason }|
        ).

        out->write(
          |BODY             : { ls_result-body }|
        ).

        TRY.
            lo_api->close( ).
          CATCH cx_root.
        ENDTRY.

      CATCH cx_root INTO DATA(lx_error).

        out->write(
          '--------------- EXCEPTION -----------------'
        ).

        out->write(
          |ERROR: { lx_error->get_text( ) }|
        ).

        IF lo_api IS BOUND.
          TRY.
              lo_api->close( ).
            CATCH cx_root.
          ENDTRY.
        ENDIF.

    ENDTRY.

    out->write(
      '=============================================='
    ).

  ENDMETHOD.
ENDCLASS.
