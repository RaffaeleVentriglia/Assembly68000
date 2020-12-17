*-----------------------------------------------------------
* Title      :Somma
* Written by :Raffaele Ventriglia
* Date       :17/12/2020
* Description:Somma di due numeri inseriti in variabili
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    MOVE.B  X,D0
    ADD.B   Y,D0
    MOVE.B  D0,S

    SIMHALT             ; halt simulator

X   DC.B    $2
Y   DC.B    $4
S   DS.B    1
    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
