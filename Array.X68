*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:
    LEA    ARR,A0
    MOVE   #5,D0
    
FOR:
    ADD    (A0)+,D1
    DBRA   D0,FOR
    
    MOVE   D1,SUM

    SIMHALT

    ORG    $4000
    
ARR    DC     1,2,3,4,5,6
SUM    DS     1

    END    START
    
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
