*-----------------------------------------------------------
* Title      : Bubble Sort
* Written by : Raffaele Ventriglia
* Date       : 18/12/2020
* Description: Ordinamento per inserimento in maniera crescente
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    LEA    ARR,A0       ; carica l'array in A0
    MOVE   #LEN-2,D2    ; inizializza il contatore
    CLR    D3           ; azzera flag di scambio
LOOP:
    MOVE   (A0),D0      ; carica in D0 il primo elemento
    MOVE   2(A0),D1     ; carica in D1 il secondo elemento
    CMP    D0,D1
    BGE    NOSWAP       ; se il secondo elemento è >=  al primo non effettuare scambi e salta all'etichetta NOSWAP
    MOVE   D1,(A0)
    MOVE   D0,2(A0)
    MOVE   #1,D3        ; incremento contatore
    
NOSWAP:
    ADD    #2,A0        ; passa alla coppia di elementi successiva
    DBRA   D2,LOOP
**************FINE CICLO*************************************
    TST    D3
    BNE    START

    SIMHALT             ; halt simulator

ARR   DC   4,2,3,1
LEN   EQU  4
      END  START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
