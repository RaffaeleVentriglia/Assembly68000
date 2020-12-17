*-----------------------------------------------------------
* Title      : Esercitazione
* Written by : Raffaele Ventriglia
* Date       : 17/12/2020
* Description: if(q=4) then x=5; else x=y;
*-----------------------------------------------------------
    ORG    $1000
START:
    CLR     D0          ; first instruction of program
    MOVE.B  Q,D0
    CMP     #$4,D0      ; comparazione tra valore immediato e registro
    BEQ     COND        ; salta a COND se sono uguali
    MOVE.B  Y,D1
    MOVE.B  D1,X
    JMP     FINE        ; salto incondizionato
    
COND:
    MOVE.B  #$5,D1
    MOVE.B  D1,X

FINE:
    SIMHALT             ; halt simulator

X   DS.B    1
Y   DC.B    $2
Q   DC.B    $4
    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
