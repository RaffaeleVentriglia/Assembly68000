*-----------------------------------------------------------
* Title      : Tipi di indirizzamento
* Written by : Raffaele Ventriglia
* Date       : 04/01/2021
* Description: Esercitazione con i diversi tipi di indirizzamento
*-----------------------------------------------------------
    ORG    $1000
START:
    BRA    INCREMENTO
    
INCREMENTO:
    MOVEA  #A,A1
    ADD    (A1)+,D0
    ADD    (A1)+,D0
    ADD    (A1)+,D0
    MOVE   D0,D
    BRA    FINE

SEMPLICE:
    *prendo l'indirizzo della variabile A
    *e la inserisco in A1
    MOVEA  #A,A1
    *così prendo il valore che si trova nell'indirizzo
    *contenuto all'interno di A1
    MOVE   (A1),D0
    MOVE   D0,B
    BRA    FINE
    
FINE:

    ORG    $4000
A   DC     5
B   DC     1
C   DC     3
D   DS     1

    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
