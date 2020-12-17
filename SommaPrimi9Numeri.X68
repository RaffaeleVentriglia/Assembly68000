*-----------------------------------------------------------
* Title      : Primo
* Written by : Raffaele Ventriglia
* Date       : 15/12/2020
* Description: Somma i primi 10 numeri
*-----------------------------------------------------------
      ORG     $8000
START:       
    CLR.W   SUM
    MOVE.W  ICNT,D0
ALOOP:
    MOVE.W  D0,CNT
    ADD.W   SUM,D0
    MOVE.W  D0,SUM
    MOVE.W  CNT,D0
    ADD     #-1,D0
    BNE     ALOOP
    JMP     SYSA
        
SYSA:    
    EQU     $8100
CNT     DS.W    1
SUM     DS.W    1
IVAL    EQU     9
ICNT    DC.W    IVAL
    END START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
