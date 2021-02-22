*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*
*   IF contenuto della memoria ($8100) < MASK THEN
*       (contenuto della memoria ($8202))=contenuto della memoria ($8100) AND MASK
*   ELSE
*       (contenuto della memoria ($8204))=contenuto della memoria ($8100) OR MASK
*   END
*
*-----------------------------------------------------------
            ORG    $1000
START:
    MOVEM   A0-A3/D0-D2,-(SP)
    LEA     $8100,A0
    LEA     $8000,A1
    LEA     $8202,A2
    LEA     $8204,A3
    JSR     SUBR
    MOVEM   (SP)+,A0-A3/D0-D2
    
            SIMHALT
            
SUBR:
    MOVE    (A0),D0
    CMP     MASK,D0
    BLT     THEN
    MOVE    (A0),D1
    OR      MASK,D1
    MOVE    D1,(A3)
    JMP     FINE
    
THEN:
    MOVE    (A0),D1
    AND     MASK,D1
    MOVE    D1,(A2)
    
FINE:
    RTS

            ORG    $8100
X           DC     4
            ORG    $8000
MASK        DC     2

            END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
