; Sommare i numeri dispari maggiori di D0 memorizzati nelle locazioni di memoria da $8210 a $821F

    ORG $8210
ARR DC.B 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
    ORG $8000
LEN EQU 16

    ORG $8050
START:
    MOVEM.L D0-D3/A0,-(SP)
    LEA ARR,A0
    MOVE.B #LEN-1,D1
    MOVE.B #5,D0
    JSR SUBR
    MOVEM.L (SP)+,D0-D3/A0

    SIMHALT
    
SUBR:
    MOVE.B (A0)+,D2
    CMP D0,D2
    BLE FINE
    BTST #0,D2
    BEQ FINE
    ADD.B #1,D3
    
FINE:
    DBRA D1,SUBR
    RTS
    
    END START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
