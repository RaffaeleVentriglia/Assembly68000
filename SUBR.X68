*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:
    MOVEM  A0/D0/D2,-(SP)       ; SALVA I VALORI CONTENUTI NEI REGISTRI NELLO STACK POINTER
    LEA    ARR,A0
    MOVE   #LEN-1,D0
    JSR    SOMMA
    MOVEM  (SP)+,A0/D0/D2       ; RIPRENDERE I VALORI CHE ERANO PRIMA CONTENUTI NEI REGISTRI


    SIMHALT

ARR    DC    1,2,3,4,5
LEN    EQU   5
SUM    DS    1

SOMMA:
    MOVE   (A0)+,D1
    ADD    D1,D2
    MOVE   D2,SUM
    DBRA   D0,SOMMA
    RTS

    END    START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
