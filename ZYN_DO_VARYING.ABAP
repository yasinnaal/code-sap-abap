DATA: BEGIN OF text,
        word1 TYPE c LENGTH 4 VALUE 'AAAA',
        word2 TYPE c LENGTH 4 VALUE 'BBBB',
        word3 TYPE c LENGTH 4 VALUE 'CCCC',
        word4 TYPE c LENGTH 4 VALUE 'DDDD',
      END OF text.

DATA: word  TYPE c LENGTH 4,
      char1 TYPE c LENGTH 1,
      char2 TYPE c LENGTH 1,
      leng TYPE i.

FIELD-SYMBOLS <word> LIKE text-word1.
DATA inc TYPE i.

DESCRIBE FIELD text LENGTH leng IN CHARACTER MODE.
leng = leng / 2.

cl_demo_output=>begin_section( `First Loop` ).

"The addition VARYING assigns a new value to a variable dobj
"for each pass of a DO loop. It can be used more
"than once in a DO statement.


DO 5 TIMES VARYING char1 FROM text(1)
                            NEXT text+2(1) RANGE text
              VARYING char2 FROM text+1(1)
                            NEXT text+3(1) RANGE text.

  cl_demo_output=>write( |{ char1 } { char2 }| ).
ENDDO.

cl_demo_output=>next_section( `Second Loop` ).

DO 4 TIMES VARYING word FROM text-word1 NEXT text-word2.
  cl_demo_output=>write( word ).
ENDDO.

cl_demo_output=>next_section( `Third Loop` ).

DO.
  inc = sy-index  - 1.
  ASSIGN text-word1 INCREMENT inc TO <word> RANGE text.
  IF sy-subrc = 0.
    cl_demo_output=>write( <word> ).
  ELSE.
    EXIT.
  ENDIF.
ENDDO.


cl_demo_output=>display( ).
