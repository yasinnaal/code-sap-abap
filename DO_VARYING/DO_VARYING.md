#### Obsolete Syntax DO - VARYING

The addition VARYING assigns a new value to a variable dobj for each pass of a DO loop. It can be used more than once in a DO statement.

Obsolete Syntax

##### DO ... VARYING dobj FROM dobj1 NEXT dobj2 [RANGE range]
#####  [VARYING ...].
#####  [statement_block]
##### ENDDO.

Note: Instead of the addition VARYING, the statement ASSIGN should be used in the loop with the addition INCREMENT.

