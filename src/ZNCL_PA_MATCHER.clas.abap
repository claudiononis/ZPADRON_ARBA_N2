CLASS zncl_pa_matcher DEFINITION

  PUBLIC

  FINAL

  CREATE PUBLIC.



  PUBLIC SECTION.



    TYPES ty_cuit TYPE c LENGTH 11.



    TYPES tt_cuits TYPE STANDARD TABLE OF ty_cuit

      WITH EMPTY KEY.



    TYPES:

      BEGIN OF ty_result,

        found            TYPE abap_bool,

        cuit             TYPE ty_cuit,

        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,

        customer_id      TYPE i_customercompany-Customer,

        company_code     TYPE i_customercompany-CompanyCode,

        nombre           TYPE string,

      END OF ty_result.



    TYPES tt_results TYPE STANDARD TABLE OF ty_result

      WITH EMPTY KEY.





    METHODS find_one

      IMPORTING

        iv_cuit         TYPE string

        iv_company_code TYPE i_customercompany-CompanyCode

      RETURNING

        VALUE(rs_result) TYPE ty_result.





    METHODS resolve_batch

      IMPORTING

        it_cuits        TYPE tt_cuits

        iv_company_code TYPE i_customercompany-CompanyCode

      RETURNING

        VALUE(rt_results) TYPE tt_results.





  PRIVATE SECTION.



    "------------------------------------------------------------

    " CUIT lógico

    "------------------------------------------------------------

    TYPES:

      BEGIN OF ty_cuit_key,

        cuit TYPE ty_cuit,

      END OF ty_cuit_key.



    TYPES tt_cuit_keys TYPE STANDARD TABLE OF ty_cuit_key

      WITH EMPTY KEY.





    "------------------------------------------------------------

    " Clave técnica EXACTA para BPTaxNumber

    "------------------------------------------------------------

    TYPES:

      BEGIN OF ty_tax_number_key,

        tax_number TYPE i_businesspartnertaxnumber-BPTaxNumber,

      END OF ty_tax_number_key.



    TYPES tt_tax_number_keys TYPE SORTED TABLE OF ty_tax_number_key

      WITH UNIQUE KEY tax_number.





    "------------------------------------------------------------

    " Clave técnica EXACTA para BPTaxLongNumber

    "------------------------------------------------------------

    TYPES:

      BEGIN OF ty_tax_long_key,

        tax_long_number TYPE i_businesspartnertaxnumber-BPTaxLongNumber,

      END OF ty_tax_long_key.



    TYPES tt_tax_long_keys TYPE SORTED TABLE OF ty_tax_long_key

      WITH UNIQUE KEY tax_long_number.





    "------------------------------------------------------------

    " Resultado técnico de TaxNumber

    "------------------------------------------------------------

    TYPES:

      BEGIN OF ty_tax_row,

        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,

        tax_number       TYPE i_businesspartnertaxnumber-BPTaxNumber,

        tax_long_number  TYPE i_businesspartnertaxnumber-BPTaxLongNumber,

      END OF ty_tax_row.



    TYPES tt_tax_rows TYPE STANDARD TABLE OF ty_tax_row

      WITH EMPTY KEY.





    "------------------------------------------------------------

    " Business Partners

    "------------------------------------------------------------

    TYPES:

      BEGIN OF ty_bp_key,

        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,

      END OF ty_bp_key.



    TYPES tt_bp_keys TYPE SORTED TABLE OF ty_bp_key

      WITH UNIQUE KEY business_partner.





    "------------------------------------------------------------

    " Customers

    "------------------------------------------------------------

    TYPES:

      BEGIN OF ty_customer_key,

        customer TYPE i_customercompany-Customer,

      END OF ty_customer_key.



    TYPES tt_customer_keys TYPE SORTED TABLE OF ty_customer_key

      WITH UNIQUE KEY customer.





    "------------------------------------------------------------

    " Candidatos

    "------------------------------------------------------------

    TYPES:

      BEGIN OF ty_candidate,

        cuit             TYPE ty_cuit,

        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,

        customer_id      TYPE i_customercompany-Customer,

        nombre           TYPE string,

      END OF ty_candidate.



    TYPES tt_candidates TYPE STANDARD TABLE OF ty_candidate

      WITH EMPTY KEY.





    TYPES:

      BEGIN OF ty_seen_candidate,

        cuit             TYPE ty_cuit,

        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,

      END OF ty_seen_candidate.



    TYPES tt_seen_candidates TYPE HASHED TABLE OF ty_seen_candidate

      WITH UNIQUE KEY cuit business_partner.





    "------------------------------------------------------------

    " Customers válidos para la sociedad

    "------------------------------------------------------------

    TYPES:

      BEGIN OF ty_allowed_customer,

        customer TYPE i_customercompany-Customer,

      END OF ty_allowed_customer.



    TYPES tt_allowed_customers TYPE HASHED TABLE OF ty_allowed_customer

      WITH UNIQUE KEY customer.





    METHODS normalize_cuit

      IMPORTING

        iv_value TYPE string

      RETURNING

        VALUE(rv_cuit) TYPE ty_cuit.



ENDCLASS.







CLASS zncl_pa_matcher IMPLEMENTATION.





  METHOD normalize_cuit.



    DATA lv_value TYPE string.



    lv_value = iv_value.



    REPLACE ALL OCCURRENCES OF REGEX '[^0-9]'

      IN lv_value

      WITH ''.



    IF strlen( lv_value ) <> 11.



      CLEAR rv_cuit.

      RETURN.



    ENDIF.



    rv_cuit =

      CONV #( lv_value ).



  ENDMETHOD.







  METHOD find_one.



    "------------------------------------------------------------

    " Matcher individual de referencia

    "------------------------------------------------------------

    DATA(lv_cuit) =

      normalize_cuit(

        iv_value = iv_cuit

      ).



    IF lv_cuit IS INITIAL.

      RETURN.

    ENDIF.





    rs_result-cuit =

      lv_cuit.



    rs_result-company_code =

      iv_company_code.





    "------------------------------------------------------------

    " Tipar CUIT igual que los campos SAP

    "------------------------------------------------------------

    DATA lv_tax_number

      TYPE i_businesspartnertaxnumber-BPTaxNumber.



    DATA lv_tax_long_number

      TYPE i_businesspartnertaxnumber-BPTaxLongNumber.





    lv_tax_number =

      CONV #( lv_cuit ).



    lv_tax_long_number =

      CONV #( lv_cuit ).





    "------------------------------------------------------------

    " CUIT -> Business Partners

    "------------------------------------------------------------

    SELECT

      FROM i_businesspartnertaxnumber WITH PRIVILEGED ACCESS

      FIELDS

        BusinessPartner,

        BPTaxNumber,

        BPTaxLongNumber

      WHERE BPTaxNumber     = @lv_tax_number

         OR BPTaxLongNumber = @lv_tax_long_number

      INTO TABLE @DATA(lt_tax).





    IF lt_tax IS INITIAL.

      RETURN.

    ENDIF.





    "------------------------------------------------------------

    " Business Partners únicos

    "------------------------------------------------------------

    DATA lt_business_partners TYPE STANDARD TABLE OF

      i_businesspartnertaxnumber-BusinessPartner

      WITH EMPTY KEY.





    LOOP AT lt_tax INTO DATA(ls_tax).



      IF NOT line_exists(

        lt_business_partners[

          table_line = ls_tax-BusinessPartner

        ]

      ).



        APPEND ls_tax-BusinessPartner

          TO lt_business_partners.



      ENDIF.



    ENDLOOP.





    "------------------------------------------------------------

    " Probar candidatos

    "------------------------------------------------------------

    LOOP AT lt_business_partners

      INTO DATA(lv_business_partner).



      DATA lv_customer TYPE i_customercompany-Customer.



      CLEAR lv_customer.





      SELECT SINGLE

        FROM i_businesspartnercustomer WITH PRIVILEGED ACCESS

        FIELDS Customer

        WHERE BusinessPartner = @lv_business_partner

        INTO @lv_customer.





      "----------------------------------------------------------

      " Fallback idéntico al Node

      "----------------------------------------------------------

      IF sy-subrc <> 0

         OR lv_customer IS INITIAL.



        lv_customer =

          CONV #( lv_business_partner ).



      ENDIF.





      "----------------------------------------------------------

      " Validar Customer / CompanyCode

      "----------------------------------------------------------

      SELECT SINGLE

        FROM i_customercompany WITH PRIVILEGED ACCESS

        FIELDS

          Customer,

          CompanyCode

        WHERE Customer    = @lv_customer

          AND CompanyCode = @iv_company_code

        INTO @DATA(ls_company).





      IF sy-subrc <> 0.

        CONTINUE.

      ENDIF.





      rs_result-found =

        abap_true.



      rs_result-business_partner =

        lv_business_partner.



      rs_result-customer_id =

        lv_customer.



      rs_result-company_code =

        ls_company-CompanyCode.




      "----------------------------------------------------------
      " Nombre real del Business Partner
      "----------------------------------------------------------
      SELECT SINGLE
        FROM i_businesspartner WITH PRIVILEGED ACCESS
        FIELDS BusinessPartnerFullName
        WHERE BusinessPartner = @lv_business_partner
        INTO @DATA(lv_bp_full_name).

      IF sy-subrc = 0.
        rs_result-nombre = CONV string( lv_bp_full_name ).
      ELSE.
        CLEAR rs_result-nombre.
      ENDIF.

      RETURN.



    ENDLOOP.



  ENDMETHOD.







  METHOD resolve_batch.



    "============================================================

    " MATCHER MASIVO

    "============================================================





    "------------------------------------------------------------

    " 1. Normalizar CUIT y eliminar duplicados

    "------------------------------------------------------------

    DATA lt_seen_cuits TYPE HASHED TABLE OF ty_cuit

      WITH UNIQUE KEY table_line.



    DATA lt_cuit_keys       TYPE tt_cuit_keys.

    DATA lt_tax_number_keys TYPE tt_tax_number_keys.

    DATA lt_tax_long_keys   TYPE tt_tax_long_keys.





    LOOP AT it_cuits INTO DATA(lv_input_cuit).



      DATA(lv_cuit) =

        normalize_cuit(

          iv_value = CONV string( lv_input_cuit )

        ).





      IF lv_cuit IS INITIAL.

        CONTINUE.

      ENDIF.





      INSERT lv_cuit

        INTO TABLE lt_seen_cuits.





      IF sy-subrc <> 0.

        CONTINUE.

      ENDIF.





      APPEND VALUE #(

        cuit = lv_cuit

      )

      TO lt_cuit_keys.





      "----------------------------------------------------------

      " IMPORTANTE:

      " claves del mismo tipo/longitud que los campos SAP

      "----------------------------------------------------------

      INSERT VALUE #(

        tax_number = CONV #( lv_cuit )

      )

      INTO TABLE lt_tax_number_keys.





      INSERT VALUE #(

        tax_long_number = CONV #( lv_cuit )

      )

      INTO TABLE lt_tax_long_keys.



    ENDLOOP.





    IF lt_cuit_keys IS INITIAL.

      RETURN.

    ENDIF.







    "------------------------------------------------------------

    " 2. BPTaxNumber masivo

    "------------------------------------------------------------

    DATA lt_tax TYPE tt_tax_rows.





    IF lt_tax_number_keys IS NOT INITIAL.



      SELECT

        FROM i_businesspartnertaxnumber WITH PRIVILEGED ACCESS

        FIELDS

          BusinessPartner AS business_partner,

          BPTaxNumber AS tax_number,

          BPTaxLongNumber AS tax_long_number

        FOR ALL ENTRIES IN @lt_tax_number_keys

        WHERE BPTaxNumber =

          @lt_tax_number_keys-tax_number

        INTO TABLE @lt_tax.



    ENDIF.







    "------------------------------------------------------------

    " 3. BPTaxLongNumber masivo

    "------------------------------------------------------------

    DATA lt_tax_long TYPE tt_tax_rows.





    IF lt_tax_long_keys IS NOT INITIAL.



      SELECT

        FROM i_businesspartnertaxnumber WITH PRIVILEGED ACCESS

        FIELDS

          BusinessPartner AS business_partner,

          BPTaxNumber AS tax_number,

          BPTaxLongNumber AS tax_long_number

        FOR ALL ENTRIES IN @lt_tax_long_keys

        WHERE BPTaxLongNumber =

          @lt_tax_long_keys-tax_long_number

        INTO TABLE @lt_tax_long.



    ENDIF.





    APPEND LINES OF lt_tax_long

      TO lt_tax.







    "------------------------------------------------------------

    " 4. CUIT -> BusinessPartner candidatos

    "------------------------------------------------------------

    DATA lt_candidates

      TYPE tt_candidates.



    DATA lt_seen_candidates

      TYPE tt_seen_candidates.



    DATA lt_bp_keys

      TYPE tt_bp_keys.





    LOOP AT lt_tax INTO DATA(ls_tax_record).





      "----------------------------------------------------------

      " BPTaxNumber

      "----------------------------------------------------------

      DATA(lv_tax_cuit) =

        normalize_cuit(

          iv_value =

            CONV string(

              ls_tax_record-tax_number

            )

        ).





      IF lv_tax_cuit IS NOT INITIAL

         AND line_exists(

           lt_seen_cuits[

             table_line = lv_tax_cuit

           ]

         ).



        INSERT VALUE #(

          cuit             = lv_tax_cuit

          business_partner =

            ls_tax_record-business_partner

        )

        INTO TABLE lt_seen_candidates.





        IF sy-subrc = 0.



          APPEND VALUE #(

            cuit             = lv_tax_cuit

            business_partner =

              ls_tax_record-business_partner

          )

          TO lt_candidates.





          INSERT VALUE #(

            business_partner =

              ls_tax_record-business_partner

          )

          INTO TABLE lt_bp_keys.



        ENDIF.



      ENDIF.





      "----------------------------------------------------------

      " BPTaxLongNumber

      "----------------------------------------------------------

      DATA(lv_long_cuit) =

        normalize_cuit(

          iv_value =

            CONV string(

              ls_tax_record-tax_long_number

            )

        ).





      IF lv_long_cuit IS NOT INITIAL

         AND line_exists(

           lt_seen_cuits[

             table_line = lv_long_cuit

           ]

         ).



        INSERT VALUE #(

          cuit             = lv_long_cuit

          business_partner =

            ls_tax_record-business_partner

        )

        INTO TABLE lt_seen_candidates.





        IF sy-subrc = 0.



          APPEND VALUE #(

            cuit             = lv_long_cuit

            business_partner =

              ls_tax_record-business_partner

          )

          TO lt_candidates.





          INSERT VALUE #(

            business_partner =

              ls_tax_record-business_partner

          )

          INTO TABLE lt_bp_keys.



        ENDIF.



      ENDIF.



    ENDLOOP.







    "------------------------------------------------------------

    " 5. Ningún BP -> todos NotFound

    "------------------------------------------------------------

    IF lt_candidates IS INITIAL.



      LOOP AT lt_cuit_keys INTO DATA(ls_no_bp).



        APPEND VALUE #(

          found        = abap_false

          cuit         = ls_no_bp-cuit

          company_code = iv_company_code

        )

        TO rt_results.



      ENDLOOP.



      RETURN.



    ENDIF.







    "------------------------------------------------------------

    " 6. BusinessPartner -> Customer masivo

    "------------------------------------------------------------

    SELECT

      FROM i_businesspartnercustomer WITH PRIVILEGED ACCESS

      FIELDS

        BusinessPartner,

        Customer

      FOR ALL ENTRIES IN @lt_bp_keys

      WHERE BusinessPartner =

        @lt_bp_keys-business_partner

      INTO TABLE @DATA(lt_bp_customers).





    SORT lt_bp_customers

      BY BusinessPartner.








    "------------------------------------------------------------
    " 6.1 Nombre real de Business Partner, masivo
    "------------------------------------------------------------
    SELECT
      FROM i_businesspartner WITH PRIVILEGED ACCESS
      FIELDS
        BusinessPartner,
        BusinessPartnerFullName
      FOR ALL ENTRIES IN @lt_bp_keys
      WHERE BusinessPartner = @lt_bp_keys-business_partner
      INTO TABLE @DATA(lt_bp_names).

    SORT lt_bp_names BY BusinessPartner.

    "------------------------------------------------------------

    " 7. Customer de cada candidato

    "------------------------------------------------------------

    DATA lt_customer_keys

      TYPE tt_customer_keys.





    LOOP AT lt_candidates

      ASSIGNING FIELD-SYMBOL(<ls_candidate>).



      DATA lv_customer

        TYPE i_customercompany-Customer.





      CLEAR lv_customer.





      READ TABLE lt_bp_customers

        INTO DATA(ls_bp_customer)

        WITH KEY

          BusinessPartner =

            <ls_candidate>-business_partner

        BINARY SEARCH.





      IF sy-subrc = 0

         AND ls_bp_customer-Customer IS NOT INITIAL.



        lv_customer =

          ls_bp_customer-Customer.



      ELSE.



        "--------------------------------------------------------

        " Fallback Node

        "--------------------------------------------------------

        lv_customer =

          CONV #( <ls_candidate>-business_partner ).



      ENDIF.





      <ls_candidate>-customer_id =

        lv_customer.
    READ TABLE lt_bp_names
      INTO DATA(ls_bp_name)
      WITH KEY BusinessPartner = <ls_candidate>-business_partner
      BINARY SEARCH.

    IF sy-subrc = 0.
      <ls_candidate>-nombre =
        CONV string( ls_bp_name-BusinessPartnerFullName ).
    ELSE.
      CLEAR <ls_candidate>-nombre.
    ENDIF.

      INSERT VALUE #(

        customer = lv_customer

      )

      INTO TABLE lt_customer_keys.



    ENDLOOP.







    "------------------------------------------------------------

    " 8. Customers habilitados en CompanyCode

    "------------------------------------------------------------

    DATA lt_allowed

      TYPE tt_allowed_customers.





    IF lt_customer_keys IS NOT INITIAL.



      SELECT

        FROM i_customercompany WITH PRIVILEGED ACCESS

        FIELDS

          Customer,

          CompanyCode

        FOR ALL ENTRIES IN @lt_customer_keys

        WHERE Customer =

              @lt_customer_keys-customer

          AND CompanyCode =

              @iv_company_code

        INTO TABLE @DATA(lt_customer_company).





      LOOP AT lt_customer_company

        INTO DATA(ls_customer_company).



        INSERT VALUE #(

          customer =

            ls_customer_company-Customer

        )

        INTO TABLE lt_allowed.



      ENDLOOP.



    ENDIF.







    "------------------------------------------------------------

    " 9. Primer candidato habilitado por CUIT

    "------------------------------------------------------------

    LOOP AT lt_cuit_keys INTO DATA(ls_cuit_key).



      DATA(ls_result) =

        VALUE ty_result(

          found        = abap_false

          cuit         = ls_cuit_key-cuit

          company_code = iv_company_code

        ).





      LOOP AT lt_candidates

        INTO DATA(ls_candidate)

        WHERE cuit = ls_cuit_key-cuit.





        IF NOT line_exists(

          lt_allowed[

            customer =

              ls_candidate-customer_id

          ]

        ).



          CONTINUE.



        ENDIF.





        ls_result-found =

          abap_true.



        ls_result-business_partner =

          ls_candidate-business_partner.



        ls_result-customer_id =

          ls_candidate-customer_id.



        ls_result-company_code =

          iv_company_code.



        ls_result-nombre =

          ls_candidate-nombre.



        EXIT.



      ENDLOOP.





      APPEND ls_result

        TO rt_results.



    ENDLOOP.



  ENDMETHOD.



ENDCLASS.


*CLASS zncl_pa_matcher DEFINITION
*  PUBLIC
*  FINAL
*  CREATE PUBLIC.
*
*  PUBLIC SECTION.
*
*    TYPES ty_cuit TYPE c LENGTH 11.
*
*    TYPES tt_cuits TYPE STANDARD TABLE OF ty_cuit
*      WITH EMPTY KEY.
*
*    TYPES:
*      BEGIN OF ty_result,
*        found            TYPE abap_bool,
*        cuit             TYPE ty_cuit,
*        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,
*        customer_id      TYPE i_customercompany-Customer,
*        company_code     TYPE i_customercompany-CompanyCode,
*        nombre           TYPE string,
*      END OF ty_result.
*
*    TYPES tt_results TYPE STANDARD TABLE OF ty_result
*      WITH EMPTY KEY.
*
*
*    METHODS find_one
*      IMPORTING
*        iv_cuit         TYPE string
*        iv_company_code TYPE i_customercompany-CompanyCode
*      RETURNING
*        VALUE(rs_result) TYPE ty_result.
*
*
*    METHODS resolve_batch
*      IMPORTING
*        it_cuits        TYPE tt_cuits
*        iv_company_code TYPE i_customercompany-CompanyCode
*      RETURNING
*        VALUE(rt_results) TYPE tt_results.
*
*
*protected section.
*  PRIVATE SECTION.
*
*    "------------------------------------------------------------
*    " CUIT lógico
*    "------------------------------------------------------------
*    TYPES:
*      BEGIN OF ty_cuit_key,
*        cuit TYPE ty_cuit,
*      END OF ty_cuit_key.
*
*    TYPES tt_cuit_keys TYPE STANDARD TABLE OF ty_cuit_key
*      WITH EMPTY KEY.
*
*
*    "------------------------------------------------------------
*    " Clave técnica EXACTA para BPTaxNumber
*    "------------------------------------------------------------
*    TYPES:
*      BEGIN OF ty_tax_number_key,
*        tax_number TYPE i_businesspartnertaxnumber-BPTaxNumber,
*      END OF ty_tax_number_key.
*
*    TYPES tt_tax_number_keys TYPE SORTED TABLE OF ty_tax_number_key
*      WITH UNIQUE KEY tax_number.
*
*
*    "------------------------------------------------------------
*    " Clave técnica EXACTA para BPTaxLongNumber
*    "------------------------------------------------------------
*    TYPES:
*      BEGIN OF ty_tax_long_key,
*        tax_long_number TYPE i_businesspartnertaxnumber-BPTaxLongNumber,
*      END OF ty_tax_long_key.
*
*    TYPES tt_tax_long_keys TYPE SORTED TABLE OF ty_tax_long_key
*      WITH UNIQUE KEY tax_long_number.
*
*
*    "------------------------------------------------------------
*    " Resultado técnico de TaxNumber
*    "------------------------------------------------------------
*    TYPES:
*      BEGIN OF ty_tax_row,
*        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,
*        tax_number       TYPE i_businesspartnertaxnumber-BPTaxNumber,
*        tax_long_number  TYPE i_businesspartnertaxnumber-BPTaxLongNumber,
*      END OF ty_tax_row.
*
*    TYPES tt_tax_rows TYPE STANDARD TABLE OF ty_tax_row
*      WITH EMPTY KEY.
*
*
*    "------------------------------------------------------------
*    " Business Partners
*    "------------------------------------------------------------
*    TYPES:
*      BEGIN OF ty_bp_key,
*        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,
*      END OF ty_bp_key.
*
*    TYPES tt_bp_keys TYPE SORTED TABLE OF ty_bp_key
*      WITH UNIQUE KEY business_partner.
*
*
*    "------------------------------------------------------------
*    " Customers
*    "------------------------------------------------------------
*    TYPES:
*      BEGIN OF ty_customer_key,
*        customer TYPE i_customercompany-Customer,
*      END OF ty_customer_key.
*
*    TYPES tt_customer_keys TYPE SORTED TABLE OF ty_customer_key
*      WITH UNIQUE KEY customer.
*
*
*    "------------------------------------------------------------
*    " Candidatos
*    "------------------------------------------------------------
*    TYPES:
*      BEGIN OF ty_candidate,
*        cuit             TYPE ty_cuit,
*        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,
*        customer_id      TYPE i_customercompany-Customer,
*        nombre           TYPE string,
*      END OF ty_candidate.
*
*    TYPES tt_candidates TYPE STANDARD TABLE OF ty_candidate
*      WITH EMPTY KEY.
*
*
*    TYPES:
*      BEGIN OF ty_seen_candidate,
*        cuit             TYPE ty_cuit,
*        business_partner TYPE i_businesspartnertaxnumber-BusinessPartner,
*      END OF ty_seen_candidate.
*
*    TYPES tt_seen_candidates TYPE HASHED TABLE OF ty_seen_candidate
*      WITH UNIQUE KEY cuit business_partner.
*
*
*    "------------------------------------------------------------
*    " Customers válidos para la sociedad
*    "------------------------------------------------------------
*    TYPES:
*      BEGIN OF ty_allowed_customer,
*        customer TYPE i_customercompany-Customer,
*      END OF ty_allowed_customer.
*
*    TYPES tt_allowed_customers TYPE HASHED TABLE OF ty_allowed_customer
*      WITH UNIQUE KEY customer.
*
*
*    METHODS normalize_cuit
*      IMPORTING
*        iv_value TYPE string
*      RETURNING
*        VALUE(rv_cuit) TYPE ty_cuit.
*
*ENDCLASS.
*
*
*
*CLASS ZNCL_PA_MATCHER IMPLEMENTATION.
*
*
*  METHOD normalize_cuit.
*
*    DATA lv_value TYPE string.
*
*    lv_value = iv_value.
*
*    REPLACE ALL OCCURRENCES OF REGEX '[^0-9]'
*      IN lv_value
*      WITH ''.
*
*    IF strlen( lv_value ) <> 11.
*
*      CLEAR rv_cuit.
*      RETURN.
*
*    ENDIF.
*
*    rv_cuit =
*      CONV #( lv_value ).
*
*  ENDMETHOD.
*
*
*  METHOD find_one.
*
*    "------------------------------------------------------------
*    " Matcher individual de referencia
*    "------------------------------------------------------------
*    DATA(lv_cuit) =
*      normalize_cuit(
*        iv_value = iv_cuit
*      ).
*
*    IF lv_cuit IS INITIAL.
*      RETURN.
*    ENDIF.
*
*
*    rs_result-cuit =
*      lv_cuit.
*
*    rs_result-company_code =
*      iv_company_code.
*
*
*    "------------------------------------------------------------
*    " Tipar CUIT igual que los campos SAP
*    "------------------------------------------------------------
*    DATA lv_tax_number
*      TYPE i_businesspartnertaxnumber-BPTaxNumber.
*
*    DATA lv_tax_long_number
*      TYPE i_businesspartnertaxnumber-BPTaxLongNumber.
*
*
*    lv_tax_number =
*      CONV #( lv_cuit ).
*
*    lv_tax_long_number =
*      CONV #( lv_cuit ).
*
*
*    "------------------------------------------------------------
*    " CUIT -> Business Partners
*    "------------------------------------------------------------
*    SELECT
*      FROM i_businesspartnertaxnumber WITH PRIVILEGED ACCESS
*      FIELDS
*        BusinessPartner,
*        BPTaxNumber,
*        BPTaxLongNumber
*      WHERE BPTaxNumber     = @lv_tax_number
*         OR BPTaxLongNumber = @lv_tax_long_number
*      INTO TABLE @DATA(lt_tax).
*
*
*    IF lt_tax IS INITIAL.
*      RETURN.
*    ENDIF.
*
*
*    "------------------------------------------------------------
*    " Business Partners únicos
*    "------------------------------------------------------------
*    DATA lt_business_partners TYPE STANDARD TABLE OF
*      i_businesspartnertaxnumber-BusinessPartner
*      WITH EMPTY KEY.
*
*
*    LOOP AT lt_tax INTO DATA(ls_tax).
*
*      IF NOT line_exists(
*        lt_business_partners[
*          table_line = ls_tax-BusinessPartner
*        ]
*      ).
*
*        APPEND ls_tax-BusinessPartner
*          TO lt_business_partners.
*
*      ENDIF.
*
*    ENDLOOP.
*
*
*    "------------------------------------------------------------
*    " Probar candidatos
*    "------------------------------------------------------------
*    LOOP AT lt_business_partners
*      INTO DATA(lv_business_partner).
*
*      DATA lv_customer TYPE i_customercompany-Customer.
*
*      CLEAR lv_customer.
*
*
*      SELECT SINGLE
*        FROM i_businesspartnercustomer WITH PRIVILEGED ACCESS
*        FIELDS Customer
*        WHERE BusinessPartner = @lv_business_partner
*        INTO @lv_customer.
*
*
*      "----------------------------------------------------------
*      " Fallback idéntico al Node
*      "----------------------------------------------------------
*      IF sy-subrc <> 0
*         OR lv_customer IS INITIAL.
*
*        lv_customer =
*          CONV #( lv_business_partner ).
*
*      ENDIF.
*
*
*      "----------------------------------------------------------
*      " Validar Customer / CompanyCode
*      "----------------------------------------------------------
*      SELECT SINGLE
*        FROM i_customercompany WITH PRIVILEGED ACCESS
*        FIELDS
*          Customer,
*          CompanyCode
*        WHERE Customer    = @lv_customer
*          AND CompanyCode = @iv_company_code
*        INTO @DATA(ls_company).
*
*
*      IF sy-subrc <> 0.
*        CONTINUE.
*      ENDIF.
*
*
*      rs_result-found =
*        abap_true.
*
*      rs_result-business_partner =
*        lv_business_partner.
*
*      rs_result-customer_id =
*        lv_customer.
*
*      rs_result-company_code =
*        ls_company-CompanyCode.
*
*      rs_result-nombre =
*        CONV string( lv_customer ).
*
*      RETURN.
*
*    ENDLOOP.
*
*  ENDMETHOD.
*
*
*  METHOD resolve_batch.
*
*    "============================================================
*    " MATCHER MASIVO
*    "============================================================
*
*
*    "------------------------------------------------------------
*    " 1. Normalizar CUIT y eliminar duplicados
*    "------------------------------------------------------------
*    DATA lt_seen_cuits TYPE HASHED TABLE OF ty_cuit
*      WITH UNIQUE KEY table_line.
*
*    DATA lt_cuit_keys       TYPE tt_cuit_keys.
*    DATA lt_tax_number_keys TYPE tt_tax_number_keys.
*    DATA lt_tax_long_keys   TYPE tt_tax_long_keys.
*
*
*    LOOP AT it_cuits INTO DATA(lv_input_cuit).
*
*      DATA(lv_cuit) =
*        normalize_cuit(
*          iv_value = CONV string( lv_input_cuit )
*        ).
*
*
*      IF lv_cuit IS INITIAL.
*        CONTINUE.
*      ENDIF.
*
*
*      INSERT lv_cuit
*        INTO TABLE lt_seen_cuits.
*
*
*      IF sy-subrc <> 0.
*        CONTINUE.
*      ENDIF.
*
*
*      APPEND VALUE #(
*        cuit = lv_cuit
*      )
*      TO lt_cuit_keys.
*
*
*      "----------------------------------------------------------
*      " IMPORTANTE:
*      " claves del mismo tipo/longitud que los campos SAP
*      "----------------------------------------------------------
*      INSERT VALUE #(
*        tax_number = CONV #( lv_cuit )
*      )
*      INTO TABLE lt_tax_number_keys.
*
*
*      INSERT VALUE #(
*        tax_long_number = CONV #( lv_cuit )
*      )
*      INTO TABLE lt_tax_long_keys.
*
*    ENDLOOP.
*
*
*    IF lt_cuit_keys IS INITIAL.
*      RETURN.
*    ENDIF.
*
*
*
*    "------------------------------------------------------------
*    " 2. BPTaxNumber masivo
*    "------------------------------------------------------------
*    DATA lt_tax TYPE tt_tax_rows.
*
*
*    IF lt_tax_number_keys IS NOT INITIAL.
*
*      SELECT
*        FROM i_businesspartnertaxnumber WITH PRIVILEGED ACCESS
*        FIELDS
*          BusinessPartner AS business_partner,
*          BPTaxNumber AS tax_number,
*          BPTaxLongNumber AS tax_long_number
*        FOR ALL ENTRIES IN @lt_tax_number_keys
*        WHERE BPTaxNumber =
*          @lt_tax_number_keys-tax_number
*        INTO TABLE @lt_tax.
*
*    ENDIF.
*
*
*
*    "------------------------------------------------------------
*    " 3. BPTaxLongNumber masivo
*    "------------------------------------------------------------
*    DATA lt_tax_long TYPE tt_tax_rows.
*
*
*    IF lt_tax_long_keys IS NOT INITIAL.
*
*      SELECT
*        FROM i_businesspartnertaxnumber WITH PRIVILEGED ACCESS
*        FIELDS
*          BusinessPartner AS business_partner,
*          BPTaxNumber AS tax_number,
*          BPTaxLongNumber AS tax_long_number
*        FOR ALL ENTRIES IN @lt_tax_long_keys
*        WHERE BPTaxLongNumber =
*          @lt_tax_long_keys-tax_long_number
*        INTO TABLE @lt_tax_long.
*
*    ENDIF.
*
*
*    APPEND LINES OF lt_tax_long
*      TO lt_tax.
*
*
*
*    "------------------------------------------------------------
*    " 4. CUIT -> BusinessPartner candidatos
*    "------------------------------------------------------------
*    DATA lt_candidates
*      TYPE tt_candidates.
*
*    DATA lt_seen_candidates
*      TYPE tt_seen_candidates.
*
*    DATA lt_bp_keys
*      TYPE tt_bp_keys.
*
*
*    LOOP AT lt_tax INTO DATA(ls_tax_record).
*
*
*      "----------------------------------------------------------
*      " BPTaxNumber
*      "----------------------------------------------------------
*      DATA(lv_tax_cuit) =
*        normalize_cuit(
*          iv_value =
*            CONV string(
*              ls_tax_record-tax_number
*            )
*        ).
*
*
*      IF lv_tax_cuit IS NOT INITIAL
*         AND line_exists(
*           lt_seen_cuits[
*             table_line = lv_tax_cuit
*           ]
*         ).
*
*        INSERT VALUE #(
*          cuit             = lv_tax_cuit
*          business_partner =
*            ls_tax_record-business_partner
*        )
*        INTO TABLE lt_seen_candidates.
*
*
*        IF sy-subrc = 0.
*
*          APPEND VALUE #(
*            cuit             = lv_tax_cuit
*            business_partner =
*              ls_tax_record-business_partner
*          )
*          TO lt_candidates.
*
*
*          INSERT VALUE #(
*            business_partner =
*              ls_tax_record-business_partner
*          )
*          INTO TABLE lt_bp_keys.
*
*        ENDIF.
*
*      ENDIF.
*
*
*      "----------------------------------------------------------
*      " BPTaxLongNumber
*      "----------------------------------------------------------
*      DATA(lv_long_cuit) =
*        normalize_cuit(
*          iv_value =
*            CONV string(
*              ls_tax_record-tax_long_number
*            )
*        ).
*
*
*      IF lv_long_cuit IS NOT INITIAL
*         AND line_exists(
*           lt_seen_cuits[
*             table_line = lv_long_cuit
*           ]
*         ).
*
*        INSERT VALUE #(
*          cuit             = lv_long_cuit
*          business_partner =
*            ls_tax_record-business_partner
*        )
*        INTO TABLE lt_seen_candidates.
*
*
*        IF sy-subrc = 0.
*
*          APPEND VALUE #(
*            cuit             = lv_long_cuit
*            business_partner =
*              ls_tax_record-business_partner
*          )
*          TO lt_candidates.
*
*
*          INSERT VALUE #(
*            business_partner =
*              ls_tax_record-business_partner
*          )
*          INTO TABLE lt_bp_keys.
*
*        ENDIF.
*
*      ENDIF.
*
*    ENDLOOP.
*
*
*
*    "------------------------------------------------------------
*    " 5. Ningún BP -> todos NotFound
*    "------------------------------------------------------------
*    IF lt_candidates IS INITIAL.
*
*      LOOP AT lt_cuit_keys INTO DATA(ls_no_bp).
*
*        APPEND VALUE #(
*          found        = abap_false
*          cuit         = ls_no_bp-cuit
*          company_code = iv_company_code
*        )
*        TO rt_results.
*
*      ENDLOOP.
*
*      RETURN.
*
*    ENDIF.
*
*
*
*    "------------------------------------------------------------
*    " 6. BusinessPartner -> Customer masivo
*    "------------------------------------------------------------
*    SELECT
*      FROM i_businesspartnercustomer WITH PRIVILEGED ACCESS
*      FIELDS
*        BusinessPartner,
*        Customer
*      FOR ALL ENTRIES IN @lt_bp_keys
*      WHERE BusinessPartner =
*        @lt_bp_keys-business_partner
*      INTO TABLE @DATA(lt_bp_customers).
*
*
*    SORT lt_bp_customers
*      BY BusinessPartner.
*
*
*
*    "------------------------------------------------------------
*    " 7. Customer de cada candidato
*    "------------------------------------------------------------
*    DATA lt_customer_keys
*      TYPE tt_customer_keys.
*
*
*    LOOP AT lt_candidates
*      ASSIGNING FIELD-SYMBOL(<ls_candidate>).
*
*      DATA lv_customer
*        TYPE i_customercompany-Customer.
*
*
*      CLEAR lv_customer.
*
*
*      READ TABLE lt_bp_customers
*        INTO DATA(ls_bp_customer)
*        WITH KEY
*          BusinessPartner =
*            <ls_candidate>-business_partner
*        BINARY SEARCH.
*
*
*      IF sy-subrc = 0
*         AND ls_bp_customer-Customer IS NOT INITIAL.
*
*        lv_customer =
*          ls_bp_customer-Customer.
*
*      ELSE.
*
*        "--------------------------------------------------------
*        " Fallback Node
*        "--------------------------------------------------------
*        lv_customer =
*          CONV #( <ls_candidate>-business_partner ).
*
*      ENDIF.
*
*
*      <ls_candidate>-customer_id =
*        lv_customer.
*
*
*      <ls_candidate>-nombre =
*        CONV string( lv_customer ).
*
*
*      INSERT VALUE #(
*        customer = lv_customer
*      )
*      INTO TABLE lt_customer_keys.
*
*    ENDLOOP.
*
*
*
*    "------------------------------------------------------------
*    " 8. Customers habilitados en CompanyCode
*    "------------------------------------------------------------
*    DATA lt_allowed
*      TYPE tt_allowed_customers.
*
*
*    IF lt_customer_keys IS NOT INITIAL.
*
*      SELECT
*        FROM i_customercompany WITH PRIVILEGED ACCESS
*        FIELDS
*          Customer,
*          CompanyCode
*        FOR ALL ENTRIES IN @lt_customer_keys
*        WHERE Customer =
*              @lt_customer_keys-customer
*          AND CompanyCode =
*              @iv_company_code
*        INTO TABLE @DATA(lt_customer_company).
*
*
*      LOOP AT lt_customer_company
*        INTO DATA(ls_customer_company).
*
*        INSERT VALUE #(
*          customer =
*            ls_customer_company-Customer
*        )
*        INTO TABLE lt_allowed.
*
*      ENDLOOP.
*
*    ENDIF.
*
*
*
*    "------------------------------------------------------------
*    " 9. Primer candidato habilitado por CUIT
*    "------------------------------------------------------------
*    LOOP AT lt_cuit_keys INTO DATA(ls_cuit_key).
*
*      DATA(ls_result) =
*        VALUE ty_result(
*          found        = abap_false
*          cuit         = ls_cuit_key-cuit
*          company_code = iv_company_code
*        ).
*
*
*      LOOP AT lt_candidates
*        INTO DATA(ls_candidate)
*        WHERE cuit = ls_cuit_key-cuit.
*
*
*        IF NOT line_exists(
*          lt_allowed[
*            customer =
*              ls_candidate-customer_id
*          ]
*        ).
*
*          CONTINUE.
*
*        ENDIF.
*
*
*        ls_result-found =
*          abap_true.
*
*        ls_result-business_partner =
*          ls_candidate-business_partner.
*
*        ls_result-customer_id =
*          ls_candidate-customer_id.
*
*        ls_result-company_code =
*          iv_company_code.
*
*        ls_result-nombre =
*          ls_candidate-nombre.
*
*        EXIT.
*
*      ENDLOOP.
*
*
*      APPEND ls_result
*        TO rt_results.
*
*    ENDLOOP.
*
*  ENDMETHOD.
*ENDCLASS.
