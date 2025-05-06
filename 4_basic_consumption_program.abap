*&---------------------------------------------------------------------*
*& Report zconsume_ent2_u41
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zconsume_ent2_u41.

select from zcds_entity2_u41
FIELDS sales_order , customer , sales_org , material_number , material_group
into @data(it_tab).
ENDSELECT.

if sy-subrc eq 0.
    cl_demo_output=>display( it_tab ).
ENDIF.
