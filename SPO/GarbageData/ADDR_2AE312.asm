; Note: Duplicate of the code found at $00F067
	STA.w $50E5
	STA.w $50E7
	STA.w $50E9
	STA.w $50EB
	STA.w $50ED
	STA.w $50EF
	STA.w $50F1
	STA.w $50F3
	STA.w $50F5
	LDA.b #$C8
	STA.w $5123
	STA.w $5125
	STA.w $5127
	STA.w $5129
	db $8D									; Note: STA.w $7E512B
