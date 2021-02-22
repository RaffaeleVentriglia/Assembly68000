*-----------------------------------------------------------
* Title      : Esercitazione con accesso alle locazioni di memoria
* Written by : Raffaele Ventriglia
* Date       : 18/12/2020
* Description:
* 
*   for j = 0 to 50
*       if j <= 20
*           Locazione di memoria ($8200 + j) = D3 + 1
*       else
*           Locazione di memoria ($8100 + j) = D3 - 2
*
*-----------------------------------------------------------

    ORG      $2000
J   DC.B     $0
LEN EQU      $50
    ORG      $2100
    
START
    CLR      D3
    MOVE.B   LEN,D0
    MOVE.B   J,D1
    LEA      $8100,A0
    LEA      $8200,A1
    DBRA     D0,LOOP
    
LOOP:
    ADD.B    $1,D1
    CMP      D1,D0
    BLE      MINOREUGUALE
    
ELSE:
    SUB.B    $2,D3
    MOVE.B   D3,(A1,D1)
    JMP      LOOP
    
MINOREUGUALE:
    ADD.B    $1,D3
    MOVE.B   D3,(A0,D1)
    JMP      LOOP
    
    END      START
    

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
