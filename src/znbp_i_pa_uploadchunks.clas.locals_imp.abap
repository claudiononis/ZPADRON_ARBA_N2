CLASS lhc_UploadChunk DEFINITION
  INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_global_authorizations
      FOR GLOBAL AUTHORIZATION
      IMPORTING
        REQUEST requested_authorizations FOR UploadChunk
      RESULT result.

    METHODS SetCreatedAt
      FOR DETERMINE ON MODIFY
      IMPORTING
        keys FOR UploadChunk~SetCreatedAt.

ENDCLASS.


CLASS lhc_UploadChunk IMPLEMENTATION.

  METHOD get_global_authorizations.

    IF requested_authorizations-%create = if_abap_behv=>mk-on.
      result-%create = if_abap_behv=>auth-allowed.
    ENDIF.

    IF requested_authorizations-%delete = if_abap_behv=>mk-on.
      result-%delete = if_abap_behv=>auth-allowed.
    ENDIF.

  ENDMETHOD.


  METHOD SetCreatedAt.

    MODIFY ENTITIES OF zni_pa_uploadchunks IN LOCAL MODE
      ENTITY UploadChunk
        UPDATE FIELDS ( CreatedAt )
        WITH VALUE #(
          FOR key IN keys
          (
            %tky      = key-%tky
            CreatedAt = utclong_current( )
          )
        ).

  ENDMETHOD.

ENDCLASS.
