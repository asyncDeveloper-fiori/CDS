*&---------------------------------------------------------------------*
*& Report zconsume_cds5_u41
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zconsume_cds5_u41.

select from zcds_entity5_u41 FIELDS salesOrder , customer , materialNumber into table @data(it_tab).


if sy-subrc is INITIAL.
    cl_Demo_output=>display( it_tab ).
ENDIF.
