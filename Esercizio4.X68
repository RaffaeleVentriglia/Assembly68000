*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*
*       IF contenuto della memoria ($8200) >= 50 THEN
*           (contenuto della memoria ($8202)) == contenuto della memoria ($8204) * 2
*       ELSE
*           (contenuto della memoria ($8204)) == contenuto della memoria ($8202) + 2
*
*-----------------------------------------------------------
    ORG    $1000
START:
    MOVEM  A0-A2/D0-D2,-(SP)
    LEA    $8200,A0
    LEA    $8202,A1
    LEA    $8204,A2
    JSR    SUBR
    MOVEM  (SP)+,A0-A2/D0-D2

    SIMHALT
    
SUBR:
    CMPI   #50,(A0)
    BGE    THEN
    ADD    #2,(A1)
    MOVE   (A2),D1
    MOVE   D1,(A1)
    JMP    FINE
    
THEN:
    MOVE   (A2),D0
    MULS   #2,D0
    MOVE   D0,(A1)
    
FINE:
    RTS

    ORG    $8200
X   DC     49
    ORG    $8202
Y   DC     3
    ORG    $8204
Z   DC     2

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
