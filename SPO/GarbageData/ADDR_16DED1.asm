; Note: Duplicate of the code found at $00EC26

	LDA.b $64
	JSR.w $16DEF6
	RTS

ADDR_16DED7:
	SEP.b #$20
	LDA.b $63
	BNE.b $08
	LDA.b #$01
	db $85													; Note: STA.b $63
