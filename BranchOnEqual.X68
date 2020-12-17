*-----------------------------------------------------------
* Title      :BEQ
* Written by :Raffaele Ventriglia
* Date       :17/12/2020
* Description:Controlla se due numeri sono uguali
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    MOVE.B  X,D0
    CMP     #$2,D0      ; compara un valore immediato con un registro
    BEQ     COND        ; salta a COND se i valori comparati sono uguali, (flag Z a 1) 
                        ; BNE salta se non sono uguali (flag Z a 0)
    JMP     FINE
    
COND:
    ADD.B   X,D0
    MOVE.B  D0,Z
    
FINE:

    SIMHALT             ; halt simulator

X   DC.B    $2
Z   DS.B    1

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
