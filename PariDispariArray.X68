*-----------------------------------------------------------------------------
* Title      : Controllo se pari o dispari
* Written by : Raffaele Ventriglia
* Date       : 18/12/2020
* Description: Dividere i numeri pari da quelli dispari in due array separati
*-----------------------------------------------------------------------------
    ORG    $1000
START:                       ; first instruction of program
    CLR  LENPARI
    CLR  LENDISP
    LEA  ARR,A0
    LEA  PARI,A1
    LEA  DISPARI,A2
    MOVE #LEN-1,D0
LOOP:
    MOVE (A0)+,D1
    BTST #0,D1
    BNE  DISP
    ADD  #1,LENPARI
    MOVE D1,(A1)+
    JMP  REPEAT
    
DISP:
    ADD  #1,LENDISP
    MOVE D1,(A2)+
    
REPEAT:
    DBRA D0,LOOP

         SIMHALT             ; halt simulator
ARR      DC    1,2,3,4,5
PARI     DS    10
DISPARI  DS    10
LEN      EQU   10
LENPARI  DS    1
LENDISP  DS    1
    END    START             ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
