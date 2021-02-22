*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description: for i = 1 to contenuto della memoria 8400 step 3 d2 = d2+contenuto memoria $8204
*-----------------------------------------------------------
    ORG    $1000
START:
    MOVEM  A0-A1/D0-D2,-(SP)
    MOVE   I,D0
    MOVE   #1,D2
    LEA    $8400,A0
    LEA    $8204,A1
    JSR    SUBR
    MOVEM  (SP)+,A0-A1/D0-D2

    SIMHALT

SUBR:
    CMP    (A0),D0
    BGT    FINE
    ADD    (A1),D2
    ADD    #3,D0
    JMP    SUBR

FINE:
    RTS
    
    ORG   $8204
X   DC  1

    ORG   $8400
Y   DC  10

    ORG   $8000
I     DC  1

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
