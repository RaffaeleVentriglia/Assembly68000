*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*IF indice >=20
*   then (locazione di memoria ($8200 + contenuto della locazione $8210))=3 * !D2
*        else (locazione di memoria ($8400 + contenuto della locazione $8220))= 2 * !D1 
*-----------------------------------------------------------
    ORG    $1000
START:
    MOVEM  A0-A2/D0-D2,-(SP)
    LEA    $8200,A0
    LEA    $8400,A1
    MOVE   I,D0
    MOVE   X,D1
    MOVE   Y,D2
    JSR    SUBR
    MOVEM  (SP)+,A0-A2/D0-D2

    SIMHALT

SUBR:
    CMPI   #20,D0
    BGE    THEN
    ADD    D2,A1
    NOT    D1
    MULS   #2,D1
    MOVE.B D1,(A1)
    JMP    FINE

THEN:
    ADD    D1,A0
    NOT    D2
    MULS   #3,D2
    MOVE.B D2,(A0)

FINE:
    RTS  

I   DC   21

    ORG  $8210
X   DC   9

    ORG  $8220
Y   DC   3

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
