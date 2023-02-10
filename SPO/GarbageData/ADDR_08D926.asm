ADDR_08D926:							; Note: Duplicate of the code found at $00E67D
	LDA.b #$E0
	STA.w $015A
	STA.w $015E
	LDA.b #$CE
	STA.w $0162
	STA.w $0166
	LDX.w #$AAAA
	STX.w $0302
	STX.w $0304
	AND.b #$F0
	STA.w $0306
	LDA.b #$0A
	TSB.w $0306
	JMP.w $08D6FF

ADDR_08D94C:
	LDA.b #$24
	STA.b $DA
	STA.b $DC
	LDY.w #$5258
	BRA.b ADDR_08D983

ADDR_08D957:
	LDA.b #$28
	STA.b $DA
	STA.b $DC
	LDY.w #$5258
	BRA.b ADDR_08D983

ADDR_08D962:
	LDA.b #$34
	STA.b $DA
	STA.b $DC
	LDY.w #$5258
	BRA.b ADDR_08D983

ADDR_08D96D:
	LDA.b #$34
	STA.b $DA
	STA.b $DC
	LDY.w #$5250
	BRA.b ADDR_08D983

ADDR_08D978:
	LDA.b #$34
	STA.b $DA
	STA.b $DC
	LDY.w #$538E
	BRA.b ADDR_08D983

ADDR_08D983:
	STY.b $D3
	STZ.b $D0
	REP.b #$20
	TXA
	CLC
	ADC.l DATA_088000+$16
	TAX
	LDA.l DATA_089AF6&$FF0000,x
	TAX
	LDA.w #$0000
	SEP.b #$20
	LDA.l DATA_089AF6&$FF0000,x
	AND.b #$0F
	STA.b $D5
	LDA.l DATA_089AF6&$FF0000,x
	INX
	STX.b $D7
	AND.b #$F0
	LSR
	LSR
	LSR
	TAX
	JMP.w (ADDR_08D9D8,x)

ADDR_08D9B2:
	LDX.w #$4D20
	STX.w $0380
	LDX.w #$5240
	STX.w $0382
	LDA.b #$7E
	STA.w $0384
	LDX.w #$0300
	STX.w $0385
	LDA.b #$7F
	STA.w $0387
	LDA.b #$80
	STA.w $037D
	STA.w $037F
	PLB
	RTS

ADDR_08D9D8:
	dw ADDR_08D9B2
	dw $08DB96
	dw $08DB19
	dw $08DAEC
	dw $08DAB9
	dw $08DA86
	dw $08DA8A
	dw $08DAF0
	dw $08DABD
	dw $08DB6F
	dw $08DB50
	dw $08DA40
	dw $08DA44
	dw ADDR_08D9F8
	dw ADDR_08D9FC
	dw $08DB2D

ADDR_08D9F8:
	LDX.b $D7
	BRA.b $09		; Note: ADDR_08DA05

ADDR_08D9FC:
	LDX.b $D7
	db $BF,$00		; Note: LDA.l DATA_089B0C&$FF0000,x
