*-----------------------------------------------------------
* Title      : Esercitazione 1
* Written by : Raffaele Ventriglia
* Date       : 11/01/2021
* Description: prima esercitazione
*     IF indice == 12
*        then ( locazione di memoria ( $8200 + indice )) = D3 - 1
*             else ( locazione di memoria ( $8100 + indice )) = D3 * 2 
*-----------------------------------------------------------
    ORG    $8000
START:
    LEA     $8200,A0
    LEA     $8100,A1
    MOVE    #5,D3
    MOVE    #12,D0
    MOVE    IND,D1
    CMP     IND,D0
    BEQ     THEN
    ADD     IND,A1
    MULS    #2,D3
    MOVE    D3,(A1)
    JMP     FINE

THEN:
    ADD     IND,A0
    SUB     #1,D3
    MOVE    D3,(A0)
    
FINE:

    SIMHALT

IND    DC    12

    END    START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
