CLASS zncl_pa_ib2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_result,
        customer          TYPE i_customercompany-Customer,
        grouping_code     TYPE i_customertaxgrouping-CustomerTaxGroupingCode,
        exists            TYPE abap_bool,
        action            TYPE c LENGTH 10,
        current_start     TYPE i_customertaxgrouping-CustTaxGroupSubjectedStartDate,
        current_end       TYPE i_customertaxgrouping-CustTaxGroupSubjectedEndDate,
        expected_start    TYPE i_customertaxgrouping-CustTaxGroupSubjectedStartDate,
        expected_end      TYPE i_customertaxgrouping-CustTaxGroupSubjectedEndDate,
        node_status       TYPE c LENGTH 20,
        message           TYPE string,
      END OF ty_result.


    METHODS evaluate
      IMPORTING
        iv_customer    TYPE i_customercompany-Customer
        iv_fecha_desde TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_result.


protected section.
  PRIVATE SECTION.

    CONSTANTS gc_grouping_code
      TYPE i_customertaxgrouping-CustomerTaxGroupingCode
      VALUE 'IB2'.

    CONSTANTS gc_end_date
      TYPE i_customertaxgrouping-CustTaxGroupSubjectedEndDate
      VALUE '99991231'.


    METHODS date_from_padron
      IMPORTING
        iv_value TYPE string
      RETURNING
        VALUE(rv_date)
          TYPE i_customertaxgrouping-CustTaxGroupSubjectedStartDate.

ENDCLASS.



CLASS ZNCL_PA_IB2 IMPLEMENTATION.


  METHOD date_from_padron.

    "------------------------------------------------------------
    " Padrón:
    " DDMMYYYY
    "
    " SAP:
    " YYYYMMDD
    "------------------------------------------------------------
    IF strlen( iv_value ) <> 8.

      CLEAR rv_date.
      RETURN.

    ENDIF.


    DATA(lv_date_text) =
        iv_value+4(4)
      && iv_value+2(2)
      && iv_value(2).


    rv_date =
      CONV #( lv_date_text ).

  ENDMETHOD.


  METHOD evaluate.

    "------------------------------------------------------------
    " 1. Datos esperados según lógica Node
    "------------------------------------------------------------
    rs_result-customer =
      iv_customer.

    rs_result-grouping_code =
      gc_grouping_code.

    rs_result-expected_start =
      date_from_padron(
        iv_value = iv_fecha_desde
      ).

    rs_result-expected_end =
      gc_end_date.


    IF rs_result-expected_start IS INITIAL.

      rs_result-action =
        'ERROR'.

      rs_result-message =
        |Fecha desde ARBA inválida: { iv_fecha_desde }|.

      RETURN.

    ENDIF.


    "------------------------------------------------------------
    " 2. Buscar específicamente IB2
    "
    " No interesa que tenga IB1, IB3, etc.
    "------------------------------------------------------------
    SELECT SINGLE
      FROM i_customertaxgrouping WITH PRIVILEGED ACCESS
      FIELDS
        Customer,
        CustomerTaxGroupingCode,
        CustTaxGroupSubjectedStartDate,
        CustTaxGroupSubjectedEndDate
      WHERE Customer =
              @iv_customer
        AND CustomerTaxGroupingCode =
              @gc_grouping_code
      INTO @DATA(ls_existing).


    "------------------------------------------------------------
    " 3. IB2 inexistente
    "
    " Node:
    " POST to_CustomerTaxGrouping
    " estado = creada
    "------------------------------------------------------------
    IF sy-subrc <> 0.

      rs_result-exists =
        abap_false.

      rs_result-action =
        'CREATE'.

      rs_result-node_status =
        'creada'.

      rs_result-message =
        |IB2 inexistente. Crear desde | &&
        |{ rs_result-expected_start } hasta | &&
        |{ rs_result-expected_end }|.

      RETURN.

    ENDIF.


    "------------------------------------------------------------
    " 4. IB2 existente
    "------------------------------------------------------------
    rs_result-exists =
      abap_true.

    rs_result-current_start =
      ls_existing-CustTaxGroupSubjectedStartDate.

    rs_result-current_end =
      ls_existing-CustTaxGroupSubjectedEndDate.


    "------------------------------------------------------------
    " El Node devuelve "actualizada" para cualquier IB2
    " preexistente, incluso cuando no necesita PATCH.
    "------------------------------------------------------------
    rs_result-node_status =
      'actualizada'.


    "------------------------------------------------------------
    " 5. Comparar fechas igual que shouldUpdate... del Node
    "------------------------------------------------------------
    IF rs_result-current_start IS INITIAL
       OR rs_result-current_end IS INITIAL
       OR rs_result-current_start <>
            rs_result-expected_start
       OR rs_result-current_end <>
            rs_result-expected_end.

      rs_result-action =
        'UPDATE'.

      rs_result-message =
        |IB2 existente con fechas diferentes. | &&
        |Actualizar { rs_result-current_start }-| &&
        |{ rs_result-current_end } a | &&
        |{ rs_result-expected_start }-| &&
        |{ rs_result-expected_end }|.

      RETURN.

    ENDIF.


    "------------------------------------------------------------
    " 6. Ya coincide
    "
    " Node NO hace PATCH.
    "------------------------------------------------------------
    rs_result-action =
      'KEEP'.

    rs_result-message =
      'IB2 existente y vigente con las fechas esperadas.'.

  ENDMETHOD.
ENDCLASS.
