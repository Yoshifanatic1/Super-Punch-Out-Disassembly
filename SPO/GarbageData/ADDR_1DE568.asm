; Note: Duplicate of the code found at $00F2C5

	db $23													; Note: LDA.b $23
	ADC.b $26
	STA.b $26
	CMP.b #$0A
	BCC.b $3F
	INY
	SBC.b #$0A
	STA.b $26
	INC.b $27
	LDA.b $27
	CMP.b #$0A
	BCC.b $32
	INY
	STZ.b $27
	INC.b $2C
	INC.b $2D
	INC.w $08DC
	INC.w $09DC
	INC.b $28
	LDA.b $28
	CMP.b #$0A
	BCC.b $1D
	INY
	STZ.b $28
	INC.b $29
	LDA.b $29
	CMP.b #$06
	BCC.b $12
	INY
	db $64												; Note: STZ.b $29
