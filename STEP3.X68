* FOR i=1 to contenuto della memoria $8400 step 3
* D2=D2+contenuto memoria $8204

* for(i = 1; i <= ($8400);i += 3) -> D2 = D2 + CONTENUTO DI ($8204)

    ORG $8000
I DC.B 1
    ORG $8400
CONT DC.B 7

    ORG $8500
START:
    MOVEM.L A0/A1/D0-D2,-(SP)
    MOVE.B I,D0
    LEA $8400,A0    ; $8400
    LEA $8204,A1    ; $8204
    MOVE.B #2,(A1)
    MOVE.B #2,D2
    JSR SUBR
    MOVEM.L (SP)+,A0/A1/D0-D2
    
    SIMHALT

SUBR:
    MOVE.B (A0),D1
    CMP D0,D1
    BLE FINE
    ADD.B #3,D0
    ADD.B (A1),D2
    JMP SUBR
    
FINE:
    RTS
    
    END START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
