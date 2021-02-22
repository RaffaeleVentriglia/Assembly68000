*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description: Contare quanti numeri dispari mggiori di D0 e minori di D1 sono memorizzati nelle
*              locazioni di memoria da $810E a $811A
*-----------------------------------------------------------
    ORG    $1000
START:                  
    MOVEM  A0-A5/D0-D5,-(SP)
    LEA    ARR,A0
    MOVEQ  #1,D0
    MOVEQ  #10,D1
    MOVE   #LEN-1,D2
    JSR    SUBR
    MOVEM  (SP)+,A0-A5/D0-D5

    SIMHALT

SUBR:
    MOVE   (A0)+,D3
    BTST   #0,D3
    BEQ    FINE
    CMP    D0,D3
    BLE    FINE
    CMP    D1,D3
    BGE    FINE
    ADD    #1,D5
    
FINE:
    DBRA   D2,SUBR
    MOVE   D5,D
    RTS
    
    ORG   $810E
ARR DC    2,4,6,8,3,5,3
LEN EQU   7

    ORG   $8000
D   DS    1

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
