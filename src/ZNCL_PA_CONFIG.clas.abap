CLASS zncl_pa_config DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    "============================================================
    " PARAMETRIZACION POR CLIENTE
    "
    " Revisar este unico objeto antes de transportar la solucion
    " a un nuevo cliente.
    "
    " Base SEIDOR:
    " - Pricing 905 / Z902
    " - El tenant no expone hoy un campo custom de sociedad en
    "   A_SlsPrcgCndnRecdValidity, por eso queda deshabilitado.
    "
    " Ejemplo TELEFE, sujeto a confirmacion en ese tenant:
    " - gc_use_company_field = abap_true
    " - gc_company_field     = 'YY1_COMPANYCODE_PCH'
    "============================================================
    CONSTANTS:
      gc_condition_table   TYPE string VALUE '901',
      gc_condition_type    TYPE string VALUE 'Z902',
      gc_access_sequence   TYPE string VALUE 'Z901',
      gc_country           TYPE string VALUE 'AR',
      gc_rate_unit         TYPE string VALUE '%',
      gc_tax_code          TYPE string VALUE 'SD',
      gc_use_company_field TYPE abap_bool VALUE abap_false,
      gc_company_field     TYPE string VALUE ''.





protected section.
private section.
ENDCLASS.



CLASS ZNCL_PA_CONFIG IMPLEMENTATION.
ENDCLASS.
