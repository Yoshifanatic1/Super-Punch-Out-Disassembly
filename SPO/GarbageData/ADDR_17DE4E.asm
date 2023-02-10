; Note: Duplicate of the code found at $00EBA3
	LDA.b $6A
	LSR
	REP.b #$21
	ADC.b $64
	SEP.b #$20
	BRA.b ADDR_17DE5C

ADDR_17DE59:
	JSR.w $17DF34
ADDR_17DE5C:
	STZ.b $6A
	RTS

ADDR_17DE5F:
	LDA.w $087C
	BEQ.b $45
	BMI.b ADDR_17DE69
	JMP.w $17DDEA

ADDR_17DE69:
	AND.b #$7F
	STA.w $087C
	LSR
	STA.b $6E
	LSR
	STA.b $6F
	REP.b #$20
	LDA.b $64
	SEC
	SBC.w #$4000
	STA.b $64
	db $A9,$98										; Note: LDA.w #$????
