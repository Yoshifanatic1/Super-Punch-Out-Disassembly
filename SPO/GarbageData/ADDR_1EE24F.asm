; Note: Duplicate of the code found at $00EFA5
	db $EC													; Note: BCC.b $EC
	LDA.w #$0000
	SEP.b #$20
	LDA.b $55
	TAY
	BEQ.b ADDR_1EE27C
	REP.b #$20
	LDA.w #$3060
ADDR_1EE25F:
	STA.w $5646,y
	DEY
	DEY
	BNE.b ADDR_1EE25F
	LDA.w #$0000
	SEP.b #$20
	LDA.b $55
	TAY
	REP.b #$20
	LDA.w #$B060
ADDR_1EE273:
	STA.w $5686,y
	DEY
	DEY
	BNE.b ADDR_1EE273
	SEP.b #$20
ADDR_1EE27C:
	LDA.b $58
	BEQ.b $48
	BMI.b ADDR_1EE292
	DEC.b $5A
	BNE.b $42
	LDA.b #$08
	STA.b $5A
	LDA.b $59
	EOR.b #$01
	STA.b $59
	BRA.b $10

ADDR_1EE292:
	LDA.b $58
	AND.b #$7F
	STA.b $58
	BEQ.b $0F
	LDA.b #$10
	STA.b $5A
	LDA.b #$01
