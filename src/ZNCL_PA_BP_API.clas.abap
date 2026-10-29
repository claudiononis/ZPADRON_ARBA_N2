CLASS zncl_pa_bp_api DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_http_result,
        status_code TYPE i,
        reason      TYPE string,
        body        TYPE string,
      END OF ty_http_result,

      BEGIN OF ty_find_result,
        exists      TYPE abap_bool,
        status_code TYPE i,
        reason      TYPE string,
        body        TYPE string,
      END OF ty_find_result,

      BEGIN OF ty_write_result,
        success     TYPE abap_bool,
        status_code TYPE i,
        reason      TYPE string,
        body        TYPE string,
      END OF ty_write_result.


    METHODS constructor
      RAISING
        cx_http_dest_provider_error
        cx_web_http_client_error.


    METHODS find_ib2
      IMPORTING
        iv_customer      TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_find_result
      RAISING
        cx_web_http_client_error.


    "------------------------------------------------------------
    " LEGACY / COMPATIBILIDAD
    "
    " Estos métodos permanecen porque existen pruebas anteriores
    " que los utilizan.
    "
    " READ/CREATE/UPDATE productivos ya no dependen de ellos.
    "------------------------------------------------------------
    METHODS fetch_csrf_token
      RETURNING
        VALUE(rv_token) TYPE string
      RAISING
        cx_http_dest_provider_error
        cx_web_http_client_error.


    METHODS get_csrf_cookie_count
      RETURNING
        VALUE(rv_count) TYPE i.


    METHODS create_ib2
      IMPORTING
        iv_customer      TYPE string
        iv_fecha_desde   TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_write_result
      RAISING
        cx_http_dest_provider_error
        cx_web_http_client_error.


    METHODS update_ib2
      IMPORTING
        iv_customer      TYPE string
        iv_fecha_desde   TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_write_result
      RAISING
        cx_http_dest_provider_error
        cx_web_http_client_error.


    METHODS close
      RAISING
        cx_web_http_client_error.


protected section.
  PRIVATE SECTION.

   CONSTANTS:
      gc_ib2_code TYPE string VALUE 'IB2',

      gc_end_date TYPE d
        VALUE '99991231',

      gc_comm_scenario TYPE c LENGTH 30
        VALUE 'ZNCS_PA_BP_OUT',



      gc_comm_system TYPE c LENGTH 30
  VALUE 'Z_PADRON_SELF_API',


      gc_service_id TYPE c LENGTH 30
        VALUE 'ZNPA_BP_REST'.

    TYPES:
      BEGIN OF ty_grouping_key,

        customer TYPE
          znscm_arba_bp=>tys_a_customer_tax_grouping_ty-customer,

        customer_tax_grouping_code TYPE
          znscm_arba_bp=>tys_a_customer_tax_grouping_ty-customer_tax_grouping_code,

      END OF ty_grouping_key.


    TYPES:
      BEGIN OF ty_proxy_find,

        found TYPE abap_bool,

        data TYPE
          znscm_arba_bp=>tys_a_customer_tax_grouping_ty,

      END OF ty_proxy_find.


    "------------------------------------------------------------
    " Solamente para compatibilidad con pruebas CSRF legacy.
    "------------------------------------------------------------
    DATA:
      mo_client        TYPE REF TO if_web_http_client,
      mv_csrf_token    TYPE string,
      mv_cookie_header TYPE string,
      mv_cookie_count  TYPE i.


    METHODS reset_client
      RAISING
        cx_http_dest_provider_error
        cx_web_http_client_error.


    METHODS get_proxy_http_client
      RETURNING
        VALUE(ro_client) TYPE REF TO if_web_http_client
      RAISING
        cx_static_check.


    METHODS get_proxy
      RETURNING
        VALUE(ro_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING
        cx_static_check.


    METHODS read_grouping_proxy
      IMPORTING
        iv_customer      TYPE string
      RETURNING
        VALUE(rs_result) TYPE ty_proxy_find
      RAISING
        cx_static_check.


    METHODS format_date_for_proxy
      IMPORTING
        iv_date        TYPE string
      RETURNING
        VALUE(rv_date) TYPE d.

ENDCLASS.



CLASS ZNCL_PA_BP_API IMPLEMENTATION.


  METHOD constructor.

    "------------------------------------------------------------
    " Se conserva inicialización legacy porque las pruebas
    " fetch_csrf_token/get_csrf_cookie_count siguen existiendo.
    "
    " El flujo productivo READ/CREATE/UPDATE usa Client Proxy.
    "------------------------------------------------------------
    reset_client( ).

  ENDMETHOD.


  METHOD reset_client.

    IF mo_client IS BOUND.

      mo_client->close( ).

    ENDIF.


    CLEAR:
      mo_client,
      mv_csrf_token,
      mv_cookie_header,
      mv_cookie_count.


    DATA(lo_destination) =
      cl_http_destination_provider=>create_by_comm_arrangement(
        comm_scenario  = CONV #( gc_comm_scenario )
        comm_system_id = CONV #( gc_comm_system )
        service_id     = CONV #( gc_service_id )
      ).


    mo_client =
      cl_web_http_client_manager=>create_by_http_destination(
        lo_destination
      ).


    mo_client->accept_cookies(
      i_allow = abap_true
    ).

    mo_client->enable_path_prefix( ).

  ENDMETHOD.


  METHOD get_proxy_http_client.

    DATA(lo_destination) =
      cl_http_destination_provider=>create_by_comm_arrangement(
        comm_scenario  = CONV #( gc_comm_scenario )
        comm_system_id = CONV #( gc_comm_system )
        service_id     = CONV #( gc_service_id )
      ).


    ro_client =
      cl_web_http_client_manager=>create_by_http_destination(
        lo_destination
      ).

  ENDMETHOD.


  METHOD get_proxy.

    ro_proxy =
      /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
        is_proxy_model_key = VALUE #(
          repository_id       = 'DEFAULT'
          proxy_model_id = 'ZNSCM_ARBA_BP'
          proxy_model_version = '0001'
        )
        io_http_client =
          get_proxy_http_client( )
        iv_relative_service_root = '/'
      ).

  ENDMETHOD.


  METHOD format_date_for_proxy.

    CLEAR rv_date.


    "------------------------------------------------------------
    " Padrón:
    " DDMMYYYY
    "
    " ABAP DATS:
    " YYYYMMDD
    "------------------------------------------------------------
    IF strlen( iv_date ) <> 8.

      RETURN.

    ENDIF.


    rv_date =
         iv_date+4(4)
      && iv_date+2(2)
      && iv_date+0(2).

  ENDMETHOD.


  METHOD read_grouping_proxy.

    CLEAR rs_result.


    "============================================================
    " 1. Proxy
    "============================================================
    DATA(lo_proxy) =
      get_proxy( ).


    "============================================================
    " 2. READ A_CUSTOMER_TAX_GROUPING
    "============================================================
    DATA(lo_request) =
      lo_proxy->create_resource_for_entity_set(
        'A_CUSTOMER_TAX_GROUPING'
      )->create_request_for_read( ).


    DATA(lo_filter_factory) =
      lo_request->create_filter_factory( ).


    "============================================================
    " 3. Customer
    "============================================================
    DATA lt_customer_range TYPE RANGE OF
      ZNSCM_ARBA_BP=>tys_a_customer_tax_grouping_ty-customer.


    APPEND VALUE #(
      sign   = 'I'
      option = 'EQ'
      low    = iv_customer
    ) TO lt_customer_range.


    DATA(lo_customer_filter) =
      lo_filter_factory->create_by_range(
        iv_property_path = 'CUSTOMER'
        it_range         = lt_customer_range
      ).


    "============================================================
    " 4. IB2
    "============================================================
    DATA lt_code_range TYPE RANGE OF
      znscm_arba_bp=>tys_a_customer_tax_grouping_ty-customer_tax_grouping_code.


    APPEND VALUE #(
      sign   = 'I'
      option = 'EQ'
      low    = gc_ib2_code
    ) TO lt_code_range.


    DATA(lo_code_filter) =
      lo_filter_factory->create_by_range(
        iv_property_path = 'CUSTOMER_TAX_GROUPING_CODE'
        it_range         = lt_code_range
      ).


    DATA(lo_filter) =
      lo_customer_filter->and(
        lo_code_filter
      ).


    lo_request->set_filter(
      lo_filter
    ).

    lo_request->set_top( 1 ).


    "============================================================
    " 5. Ejecutar
    "============================================================
    DATA lt_groupings TYPE STANDARD TABLE OF
      znscm_arba_bp=>tys_a_customer_tax_grouping_ty
      WITH EMPTY KEY.


    lo_request->execute( )->get_business_data(
      IMPORTING
        et_business_data = lt_groupings
    ).


    IF lt_groupings IS INITIAL.

      rs_result-found =
        abap_false.

      RETURN.

    ENDIF.


    READ TABLE lt_groupings
      INDEX 1
      INTO rs_result-data.


    IF sy-subrc = 0.

      rs_result-found =
        abap_true.

    ENDIF.

  ENDMETHOD.


  METHOD find_ib2.

    CLEAR rs_result.


    "============================================================
    " READ mediante OData Client Proxy.
    "
    " Ya no usamos HTTP manual.
    "============================================================
    TRY.

        DATA(ls_proxy_result) =
          read_grouping_proxy(
            iv_customer = iv_customer
          ).


        "--------------------------------------------------------
        " IB2 no existe
        "--------------------------------------------------------
        IF ls_proxy_result-found = abap_false.

          rs_result-exists =
            abap_false.

          rs_result-status_code =
            404.

          rs_result-reason =
            'Not Found'.

          CLEAR rs_result-body.

          RETURN.

        ENDIF.


        "--------------------------------------------------------
        " IB2 existe
        "--------------------------------------------------------
        rs_result-exists =
          abap_true.

        rs_result-status_code =
          200.

        rs_result-reason =
          'OK'.


        "--------------------------------------------------------
        " Body informativo.
        "
        " Ninguna lógica de negocio depende de este texto.
        " Las fechas reales son evaluadas por ZNCL_PA_IB2.
        "--------------------------------------------------------
        rs_result-body =
             |Customer={ ls_proxy_result-data-customer };|
          && |Code={ ls_proxy_result-data-customer_tax_grouping_code };|
          && |Start={ ls_proxy_result-data-cust_tax_group_subjected_s DATE = ISO };|
          && |End={ ls_proxy_result-data-cust_tax_group_subjected_e DATE = ISO }|.


      CATCH cx_root INTO DATA(lx_find).

        "--------------------------------------------------------
        " IMPORTANTE:
        "
        " Un error técnico NO se transforma en 404.
        "
        " De esa manera ningún consumidor puede interpretar una
        " falla de comunicación como "IB2 inexistente" y crear
        " accidentalmente.
        "--------------------------------------------------------
        rs_result-exists =
          abap_false.

        rs_result-status_code =
          0.

        rs_result-reason =
          lx_find->get_text( ).

        rs_result-body =
          lx_find->get_longtext( ).

    ENDTRY.

  ENDMETHOD.


  METHOD fetch_csrf_token.

    "============================================================
    " LEGACY
    "
    " CREATE y UPDATE productivos NO usan este método.
    "============================================================

    IF mv_csrf_token IS NOT INITIAL.

      rv_token =
        mv_csrf_token.

      RETURN.

    ENDIF.


    reset_client( ).


    DATA(lo_request) =
      mo_client->get_http_request( ).


    lo_request->set_uri_path(
      '/'
    ).


    lo_request->set_header_field(
      i_name  = 'Accept'
      i_value = 'application/json'
    ).


    lo_request->set_header_field(
      i_name  = 'X-CSRF-Token'
      i_value = 'Fetch'
    ).


    DATA(lo_response) =
      mo_client->execute(
        if_web_http_client=>get
      ).


    DATA(ls_status) =
      lo_response->get_status( ).


    IF ls_status-code <> 200.

      CLEAR:
        mv_csrf_token,
        mv_cookie_header,
        mv_cookie_count,
        rv_token.

      RETURN.

    ENDIF.


    mv_csrf_token =
      lo_response->get_header_field(
        i_name = 'X-CSRF-Token'
      ).


    CLEAR:
      mv_cookie_header,
      mv_cookie_count.


    DATA(lt_headers) =
      lo_response->get_header_fields( ).


    LOOP AT lt_headers
      INTO DATA(ls_header).


      DATA(lv_header_name) =
        ls_header-name.

      TRANSLATE lv_header_name TO LOWER CASE.


      IF lv_header_name = 'set-cookie'.

        DATA lv_cookie_pair TYPE string.
        DATA lv_cookie_rest TYPE string.


        CLEAR:
          lv_cookie_pair,
          lv_cookie_rest.


        SPLIT ls_header-value
          AT ';'
          INTO
            lv_cookie_pair
            lv_cookie_rest.


        IF lv_cookie_pair IS NOT INITIAL.

          IF mv_cookie_header IS INITIAL.

            mv_cookie_header =
              lv_cookie_pair.

          ELSE.

            mv_cookie_header =
                 mv_cookie_header
              && '; '
              && lv_cookie_pair.

          ENDIF.


          mv_cookie_count =
            mv_cookie_count + 1.

        ENDIF.

      ENDIF.

    ENDLOOP.


    rv_token =
      mv_csrf_token.

  ENDMETHOD.


  METHOD get_csrf_cookie_count.

    rv_count =
      mv_cookie_count.

  ENDMETHOD.


  METHOD create_ib2.

    CLEAR rs_result.


    "============================================================
    " 1. Fecha ARBA
    "============================================================
    DATA(lv_start_date) =
      format_date_for_proxy(
        iv_date = iv_fecha_desde
      ).


    IF lv_start_date IS INITIAL.

      rs_result-success =
        abap_false.

      rs_result-status_code =
        0.

      rs_result-reason =
        |Fecha desde invalida: { iv_fecha_desde }|.

      RETURN.

    ENDIF.


    TRY.

        "========================================================
        " 2. Proxy
        "========================================================
        DATA(lo_proxy) =
          get_proxy( ).


        "========================================================
        " 3. CREATE
        "========================================================
        DATA(lo_create_request) =
          lo_proxy->create_resource_for_entity_set(
            'A_CUSTOMER_TAX_GROUPING'
          )->create_request_for_create( ).


        "========================================================
        " 4. Payload
        "========================================================
        DATA(ls_create_data) =
          VALUE
            znscm_arba_bp=>tys_a_customer_tax_grouping_ty(

              customer =
                iv_customer

              customer_tax_grouping_code =
                gc_ib2_code

              cust_tax_group_subjected_s =
                lv_start_date

              cust_tax_group_subjected_e =
                gc_end_date

            ).


        lo_create_request->set_business_data(
          is_business_data =
            ls_create_data

          it_provided_property = VALUE #(
            ( |CUSTOMER| )
            ( |CUSTOMER_TAX_GROUPING_CODE| )
            ( |CUST_TAX_GROUP_SUBJECTED_S| )
            ( |CUST_TAX_GROUP_SUBJECTED_E| )
          )
        ).


        "========================================================
        " 5. CREATE REAL
        "========================================================
        DATA(lo_create_response) =
          lo_create_request->execute( ).


        DATA ls_created TYPE
          znscm_arba_bp=>tys_a_customer_tax_grouping_ty.


        lo_create_response->get_business_data(
          IMPORTING
            es_business_data =
              ls_created
        ).


        rs_result-success =
          abap_true.

        rs_result-status_code =
          201.

        rs_result-reason =
          'Created via OData Client Proxy'.

        rs_result-body =
             |Customer={ ls_created-customer };|
          && |Code={ ls_created-customer_tax_grouping_code };|
          && |Start={ ls_created-cust_tax_group_subjected_s DATE = ISO };|
          && |End={ ls_created-cust_tax_group_subjected_e DATE = ISO }|.


      CATCH cx_root INTO DATA(lx_create).

        rs_result-success =
          abap_false.

        rs_result-status_code =
          0.

        rs_result-reason =
          lx_create->get_text( ).

        rs_result-body =
          lx_create->get_longtext( ).

    ENDTRY.

  ENDMETHOD.


  METHOD update_ib2.

    CLEAR rs_result.


    "============================================================
    " 1. Fecha ARBA
    "============================================================
    DATA(lv_start_date) =
      format_date_for_proxy(
        iv_date = iv_fecha_desde
      ).


    IF lv_start_date IS INITIAL.

      rs_result-success =
        abap_false.

      rs_result-status_code =
        0.

      rs_result-reason =
        |Fecha desde invalida: { iv_fecha_desde }|.

      RETURN.

    ENDIF.


    TRY.

        "========================================================
        " 2. Leer primero y recuperar la clave canonical SAP.
        "
        " Caso ya comprobado:
        "
        " entrada 0031100004
        " SAP     31100004
        "========================================================
        DATA(ls_existing) =
          read_grouping_proxy(
            iv_customer = iv_customer
          ).


        IF ls_existing-found = abap_false.

          rs_result-success =
            abap_false.

          rs_result-status_code =
            404.

          rs_result-reason =
            'IB2 no encontrado para actualizar'.

          RETURN.

        ENDIF.


        "========================================================
        " 3. Proxy
        "========================================================
        DATA(lo_proxy) =
          get_proxy( ).


        "========================================================
        " 4. Clave
        "========================================================
        DATA(ls_key) =
          VALUE ty_grouping_key(

            customer =
              ls_existing-data-customer

            customer_tax_grouping_code =
              ls_existing-data-customer_tax_grouping_code

          ).


        DATA(lo_entity_resource) =
          lo_proxy->create_resource_for_entity_set(
            'A_CUSTOMER_TAX_GROUPING'
          )->navigate_with_key(
            ls_key
          ).


        "========================================================
        " 5. PATCH
        "========================================================
        DATA(lo_update_request) =
          lo_entity_resource->create_request_for_update(
            /iwbep/if_cp_request_update=>gcs_update_semantic-patch
          ).


        DATA(ls_patch_data) =
          VALUE
            znscm_arba_bp=>tys_a_customer_tax_grouping_ty(

              cust_tax_group_subjected_s =
                lv_start_date

              cust_tax_group_subjected_e =
                gc_end_date

            ).


        lo_update_request->set_business_data(
          is_business_data =
            ls_patch_data

          it_provided_property = VALUE #(
            ( |CUST_TAX_GROUP_SUBJECTED_S| )
            ( |CUST_TAX_GROUP_SUBJECTED_E| )
          )
        ).


        "========================================================
        " 6. PATCH REAL
        "========================================================
        lo_update_request->execute( ).


        rs_result-success =
          abap_true.

        rs_result-status_code =
          204.

        rs_result-reason =
          'Updated via OData Client Proxy'.

        rs_result-body =
             |Customer={ ls_existing-data-customer };|
          && |Code={ ls_existing-data-customer_tax_grouping_code };|
          && |Start={ lv_start_date DATE = ISO };|
          && |End={ gc_end_date DATE = ISO }|.


      CATCH cx_root INTO DATA(lx_update).

        rs_result-success =
          abap_false.

        rs_result-status_code =
          0.

        rs_result-reason =
          lx_update->get_text( ).

        rs_result-body =
          lx_update->get_longtext( ).

    ENDTRY.

  ENDMETHOD.


  METHOD close.

    IF mo_client IS BOUND.

      mo_client->close( ).

    ENDIF.


    CLEAR:
      mo_client,
      mv_csrf_token,
      mv_cookie_header,
      mv_cookie_count.

  ENDMETHOD.
ENDCLASS.
