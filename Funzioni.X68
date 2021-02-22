*-----------------------------------------------------------
* Title      : Somma con funzione
* Written by : Raffaele Ventriglia
* Date       : 18/12/2020
* Description: Eseguire la somma in una variabile usando le funzioni
*-----------------------------------------------------------
    ORG    $2000
X   DC     $1
S   DS     1

    ORG    $2100
START
    MOVE   X,D0
    JSR    FUNZIONE
    JSR    FUNZIONE
    JSR    FUNZIONE
    JSR    FUNZIONE
    JMP    CONTINUA
    
FUNZIONE:
    ADD    #$1,D0
    RTS
    
CONTINUA:
    MOVE   D0,S
    END START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
