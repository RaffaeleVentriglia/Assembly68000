* FOR i=4 to 40 step 4 D3=!D3 + contenuto della memoria $8140

* FOR(I = 4; I <= 40; i += 40) -> D3 = !D3 + CONTENUTO ($8140)

    ORG $8140
CONT DC.B 2
I DC.B 4

    ORG $8000
START:
    MOVEM.L A0/D0/D1/D3,-(SP)
    LEA $8140,A0
    MOVE.B I,D0
    MOVE.B #5,D3
    JSR SUBR
    MOVEM.L (SP)+,A0/A1/D0/D1/D3
    
    SIMHALT
    
SUBR:
    MOVE.B #40,D1
    CMP D0,D1
    BLE FINE
    ADD.B #4,D0
    NOT D3
    ADD.B (A0),D3
    JMP SUBR
    
FINE:
    RTS
    
    END START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
