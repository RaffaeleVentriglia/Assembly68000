; for (i = 2 to Z step (A1) -> D4 = D4 + contenuto della memoria ($8240 + i)

; for(i = 2; i <= <; i += (A1))

    org $8000
i dc.b 2
z dc.b 6

    org $8240
contenuto dc.b 4

    org $8100
start:
    movem.l A0-A5/D0-D5,-(SP)
    move.b i,D0     ; I
    move.b z,D1     ; Z
    move.b #1,D4    ; D4
    lea $8400,A1    ; A1
    move.b #2,(A1)
    lea $8240,A0    ; $8240
    jsr subr
    movem.l (SP)+,A0-A5/D0-D5
    
    simhalt
    
subr:
    add.b D0,(A0)
    add.b (A0),D4
    cmp D1,D0
    bge fine
    add.b (A1),D0
    jmp subr
    
fine:
    rts
    
    end start
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
