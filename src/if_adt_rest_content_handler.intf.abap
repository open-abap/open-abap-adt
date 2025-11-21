INTERFACE if_adt_rest_content_handler PUBLIC.

  METHODS deserialize
    IMPORTING
      request_entity TYPE REF TO if_rest_entity
    EXPORTING
      data           TYPE data
    RAISING
      cx_adt_rest.

  METHODS serialize
    IMPORTING
      data            TYPE data
      response_entity TYPE REF TO if_rest_entity
    RAISING
      cx_adt_rest.

  METHODS get_supported_content_type
    RETURNING
      VALUE(result) TYPE string.

ENDINTERFACE.