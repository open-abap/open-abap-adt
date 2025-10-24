CLASS cl_adt_rest_cnt_hdl_factory DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS get_instance
      RETURNING
        VALUE(result) TYPE REF TO cl_adt_rest_cnt_hdl_factory.

    METHODS get_handler_for_plain_text
      IMPORTING
        content_type      TYPE string DEFAULT if_rest_media_type=>gc_text_plain
        strict_conversion TYPE boole_d DEFAULT abap_true
          PREFERRED PARAMETER content_type
      RETURNING
        VALUE(result)     TYPE REF TO if_adt_rest_content_handler.

    METHODS get_handler_for_binary_data
      IMPORTING
        content_type  TYPE string
      RETURNING
        VALUE(result) TYPE REF TO if_adt_rest_content_handler.
ENDCLASS.

CLASS cl_adt_rest_cnt_hdl_factory IMPLEMENTATION.

  METHOD get_instance.
    result = NEW #( ).
  ENDMETHOD.

  METHOD get_handler_for_plain_text.
    RETURN.
  ENDMETHOD.

  METHOD get_handler_for_binary_data.
    RETURN.
  ENDMETHOD.

ENDCLASS.