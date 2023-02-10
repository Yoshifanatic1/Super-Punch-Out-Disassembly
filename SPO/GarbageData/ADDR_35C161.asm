; Note: Duplicate of the code found at $00CCFF.
	db $10										; Note: SEP.b #$10
	LDA.b $F1
	AND.b #$0F
	JSR.w $C1A4
	LDA.b $F0
	AND.b #$80
	JSR.w $C1A4
	LDA.b $F1
	AND.b #$80
	JSR.w $C1A4
	LDA.b $F0
	AND.b #$40
	JSR.w $C1A4
	LDA.b $F1
