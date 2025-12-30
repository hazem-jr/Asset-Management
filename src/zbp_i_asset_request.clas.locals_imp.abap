CLASS lhc_zi_asset_request DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_asset_request RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_asset_request RESULT result.

    METHODS submitForApproval FOR MODIFY
      IMPORTING keys FOR ACTION zi_asset_request~submitForApproval RESULT result.

    METHODS setInitialStatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR zi_asset_request~setInitialStatus.

    METHODS validateMandatoryFields FOR VALIDATE ON SAVE
      IMPORTING keys FOR zi_asset_request~validateMandatoryFields.

ENDCLASS.

CLASS lhc_zi_asset_request IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD submitForApproval.
  ENDMETHOD.

  METHOD setInitialStatus.

    MODIFY ENTITIES OF zi_asset_request IN LOCAL MODE
    ENTITY zi_asset_request
    UPDATE FIELDS ( Status )
    WITH VALUE #(
      FOR k IN keys
      ( %key   = k-%key
        Status = 'DRAFT' )
    ).

*    READ ENTITIES OF zi_asset_request IN LOCAL MODE
*    ENTITY zi_asset_request
*    FIELDS ( Status ) WITH CORRESPONDING #( keys )
*    RESULT DATA(lt_entities).
*
*    LOOP AT lt_entities ASSIGNING FIELD-SYMBOL(<fs_entity>) .
*      IF <fs_entity>-Status IS INITIAL .
*        <fs_entity>-Status = 'Draft' .
*      ENDIF.
*    ENDLOOP.
*
*    MODIFY ENTITIES OF zi_asset_request IN LOCAL MODE
*    ENTITY zi_asset_request
*    UPDATE FIELDS ( Status ) WITH VALUE #( FOR ls_entity IN lt_entities
*                                         ( %key = ls_entity-%key Status =  ls_entity-Status ) ) .
  ENDMETHOD.

  METHOD validateMandatoryFields.
  ENDMETHOD.

ENDCLASS.
