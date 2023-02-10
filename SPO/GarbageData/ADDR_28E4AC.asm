; Note: Duplicate of the code found at $00F209
	BCS.b ADDR_28E4B9
	LDX.w #$0000
	STX.b $46
	STX.b $48
	LDA.b #$01
	TSB.b $41
ADDR_28E4B9:
	LDA.b $49
	BNE.b $25
	LDA.b #$FF
	STA.w $5054
	LDA.b $48
	BNE.b $21
	LDA.b #$FF
	STA.w $5056
	LDA.b $47
	BNE.b $1D
	LDA.b #$FF
	STA.w $5058
	LDA.b $46
	BNE.b $19
	LDA.b #$FF
	STA.w $505A
	LDA.b #$01
	db $04													; Note: TSB.b $41
