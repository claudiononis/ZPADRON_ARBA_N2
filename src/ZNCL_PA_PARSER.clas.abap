CLASS zncl_pa_parser DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_record,
        regimen         TYPE c LENGTH 1,
        fecha_desde     TYPE c LENGTH 8,
        fecha_hasta     TYPE c LENGTH 8,
        cuit            TYPE c LENGTH 11,
        alta_baja       TYPE c LENGTH 1,
        cambio_alicuota TYPE c LENGTH 1,
        alicuota        TYPE decfloat34,
      END OF ty_record.

    TYPES tt_records TYPE STANDARD TABLE OF ty_record
      WITH EMPTY KEY.


    METHODS parse
      IMPORTING
        iv_content TYPE string
      RETURNING
        VALUE(rt_records) TYPE tt_records.


    METHODS parse_chunk
      IMPORTING
        iv_content  TYPE string
        iv_is_final TYPE abap_bool
      CHANGING
        cv_remainder TYPE string
      RETURNING
        VALUE(rt_records) TYPE tt_records.


protected section.
  PRIVATE SECTION.

    METHODS parse_rate
      IMPORTING
        iv_value TYPE string
      RETURNING
        VALUE(rv_rate) TYPE decfloat34.

ENDCLASS.



CLASS ZNCL_PA_PARSER IMPLEMENTATION.


  METHOD parse.

    DATA lv_remainder TYPE string.

    rt_records =
      parse_chunk(
        EXPORTING
          iv_content   = iv_content
          iv_is_final  = abap_true
        CHANGING
          cv_remainder = lv_remainder
      ).

  ENDMETHOD.


    METHOD parse_chunk.

    "------------------------------------------------------------
    " 1. Unir eventual resto del chunk anterior + chunk actual
    "------------------------------------------------------------
    DATA lv_content TYPE string.

    lv_content =
      cv_remainder && iv_content.

    CLEAR cv_remainder.


    "------------------------------------------------------------
    " 2. Normalizar CRLF de Windows a LF
    "------------------------------------------------------------
    REPLACE ALL OCCURRENCES OF
      cl_abap_char_utilities=>cr_lf
      IN lv_content
      WITH cl_abap_char_utilities=>newline.


    "------------------------------------------------------------
    " 3. Detectar si el contenido termina físicamente en newline
    "
    " IMPORTANTE:
    "
    " Si termina en newline:
    "   la última línea está COMPLETA.
    "
    " Si NO termina en newline y todavía quedan chunks:
    "   la última línea puede estar cortada y debe pasar como
    "   remainder al próximo chunk.
    "------------------------------------------------------------
    DATA lv_ends_with_newline TYPE abap_bool VALUE abap_false.

    DATA(lv_length) =
      strlen( lv_content ).


    IF lv_length > 0.

      DATA(lv_last_offset) =
        lv_length - 1.


      IF lv_content+lv_last_offset(1)
           = cl_abap_char_utilities=>newline.

        lv_ends_with_newline =
          abap_true.

      ENDIF.

    ENDIF.


    "------------------------------------------------------------
    " 4. Separar líneas
    "------------------------------------------------------------
    DATA lt_lines TYPE STANDARD TABLE OF string
      WITH EMPTY KEY.

    SPLIT lv_content
      AT cl_abap_char_utilities=>newline
      INTO TABLE lt_lines.


    "------------------------------------------------------------
    " 5. Guardar última línea SOLO cuando realmente está cortada
    "
    " Éste corrige el caso 500 -> 496.
    "------------------------------------------------------------
    IF iv_is_final = abap_false
       AND lv_ends_with_newline = abap_false
       AND lt_lines IS NOT INITIAL.

      DATA(lv_last_index) =
        lines( lt_lines ).


      cv_remainder =
        lt_lines[ lv_last_index ].


      DELETE lt_lines
        INDEX lv_last_index.

    ELSE.

      CLEAR cv_remainder.

    ENDIF.


    "------------------------------------------------------------
    " 6. Parsear todas las líneas completas
    "------------------------------------------------------------
    LOOP AT lt_lines INTO DATA(lv_line).

      IF lv_line IS INITIAL.
        CONTINUE.
      ENDIF.


      DATA lt_fields TYPE STANDARD TABLE OF string
        WITH EMPTY KEY.

      SPLIT lv_line
        AT ';'
        INTO TABLE lt_fields.


      "----------------------------------------------------------
      " Node:
      " mínimo necesario para acceder al campo de alícuota
      "----------------------------------------------------------
      IF lines( lt_fields ) < 9.
        CONTINUE.
      ENDIF.


      "----------------------------------------------------------
      " Sólo registros P
      "----------------------------------------------------------
      IF lt_fields[ 1 ] <> 'P'.
        CONTINUE.
      ENDIF.


      "----------------------------------------------------------
      " CUIT
      "
      " Equivalente Node:
      " replace(/\D/g, "")
      "----------------------------------------------------------
      DATA(lv_cuit) =
        lt_fields[ 5 ].

      REPLACE ALL OCCURRENCES OF REGEX '[^0-9]'
        IN lv_cuit
        WITH ''.


      "----------------------------------------------------------
      " Alícuota
      "----------------------------------------------------------
      DATA(lv_alicuota_text) =
        lt_fields[ 9 ].

      REPLACE ALL OCCURRENCES OF ','
        IN lv_alicuota_text
        WITH '.'.


      DATA(lv_alicuota) =
        parse_rate(
          iv_value = lv_alicuota_text
        ).


      "----------------------------------------------------------
      " Mapeo ARBA
      "----------------------------------------------------------
      APPEND VALUE #(
        regimen          = lt_fields[ 1 ]
        fecha_desde      = lt_fields[ 3 ]
        fecha_hasta      = lt_fields[ 4 ]
        cuit             = lv_cuit
        alta_baja        = lt_fields[ 7 ]
        cambio_alicuota  = lt_fields[ 8 ]
        alicuota         = lv_alicuota
      )
      TO rt_records.

    ENDLOOP.

  ENDMETHOD.


  METHOD parse_rate.

    DATA lv_value TYPE string.

    lv_value = iv_value.


    REPLACE ALL OCCURRENCES OF ','
      IN lv_value
      WITH '.'.


    TRY.

        rv_rate =
          CONV decfloat34(
            lv_value
          ).

      CATCH
        cx_sy_conversion_no_number
        cx_sy_conversion_overflow.

        rv_rate = 0.

    ENDTRY.

  ENDMETHOD.
ENDCLASS.
