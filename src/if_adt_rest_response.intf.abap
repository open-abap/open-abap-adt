INTERFACE if_adt_rest_response PUBLIC.
  METHODS set_status
    IMPORTING
      status TYPE i.

  METHODS set_body_data
    IMPORTING
      content_handler TYPE REF TO if_adt_rest_content_handler
      data            TYPE data.

  METHODS get_inner_rest_response
    RETURNING
      VALUE(result) TYPE REF TO if_rest_response.
ENDINTERFACE.