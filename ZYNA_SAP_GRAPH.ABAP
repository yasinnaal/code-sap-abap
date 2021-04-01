REPORT ZYN_SAP_GRAPH.
// Draw SAP Graph using ABAP Code

DATA: BEGIN OF itab_data OCCURS 0,
dataname(15),
quantity1 TYPE i,
quantity2 TYPE i,
quantity3 TYPE i,
END OF itab_data,

BEGIN OF itab_options OCCURS 0,
option(20),
END OF itab_options.

itab_data-dataname = '3M Safety Mask'.
itab_data-quantity1 = 50.
itab_data-quantity2 = 62.
itab_data-quantity3 = 59.
APPEND itab_data.

itab_data-dataname = 'Fire Extinguisher'.
itab_data-quantity1 = 30.
itab_data-quantity2 = 52.
itab_data-quantity3 = 44.
APPEND itab_data.

itab_data-dataname = 'FM200 System'.
itab_data-quantity1 = 15.
itab_data-quantity2 = 22.
itab_data-quantity3 = 19.
APPEND itab_data.

CALL FUNCTION 'GRAPH_MATRIX_3D'
EXPORTING
col1 = 'Jan'
col2 = 'Feb'
col3 = 'Mar'
titl = 'SAP Graphics - Yasin'
TABLES
data = itab_data
opts = itab_options
EXCEPTIONS
OTHERS = 1.
