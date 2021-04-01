REPORT ZYN_DYNAMIC_TAB_MODIFY.

TYPES:
  BEGIN OF struc,
    col1 TYPE i,
    col2 TYPE i,
    col3 TYPE i,
  END OF struc.


DATA itab TYPE STANDARD TABLE OF struc.
"DATA itab TYPE STANDARD TABLE OF struc WITH EMPTY KEY.

itab = VALUE #( ( col1 = 1 col2 = 2 col3 = 3 )
                ( col1 = 4 col2 = 5 col3 = 6 )
                ( col1 = 7 col2 = 8 col3 = 9 ) ).

ASSIGN COMPONENT 2 OF STRUCTURE itab[ 1 ] TO FIELD-SYMBOL(<fs>).

<fs> = 888888 .

cl_demo_output=>display( itab ).
