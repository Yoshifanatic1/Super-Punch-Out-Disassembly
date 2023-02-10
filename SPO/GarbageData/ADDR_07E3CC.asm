; Note: Duplicate of the code found at $00F11D
	dw $5113						; Note: LDA.w $7E5113
	STA.w $5115
	STA.w $5117
	STA.w $5119
	STA.w $511B
	STA.w $511D
	LDA.b #$08
	STA.w $50CB
	STA.w $50CD
	STA.w $50CF
	STA.w $50D1
	STA.w $50D3
	STA.w $50D5
	STA.w $50D7
	STA.w $50D9
	STA.w $50DB
	STA.w $50DD
	BRA.b ADDR_07E417

ADDR_07E3FF:
	DEC.b $16
	BNE.b $99						; Note: ADDR_07E39C
	LDA.b $14
	CMP.w $089F
	BEQ.b ADDR_07E411
	BCS.b ADDR_07E414
	INC
	STA.b $14
	BRA.b ADDR_07E417

ADDR_07E411:
	INC.b $16
	RTS

ADDR_07E414:
	DEC
	STA.b $14
ADDR_07E417:
	LDA.b #$02
	STA.b $16
	LDY.w #$0000
	LDA.b #$00
	XBA
	LDA.b $14
	LSR
	LSR
	LSR
	BEQ.b ADDR_07E43B
	TAX
	LDA.b #$30
ADDR_07E42B:
	STA.w $50CA,y
	STA.w $510A,y
	INY
	INY
	DEX
	BNE.b ADDR_07E42B
	CPY.w #$0014
	BEQ.b ADDR_07E44C
ADDR_07E43B:
	LDA.b $14
	AND.b #$07
	STA.b $15
	LDA.b #$38
	SEC
	SBC.b $15
	STA.w $50CA,y
	STA.w $510A,y
ADDR_07E44C:
	RTS

ADDR_07E44D:
	LDA.b $40
	BEQ.b ADDR_07E44C
	BPL.b ADDR_07E487
	AND.b #$7F
	STA.b $40
	LDX.w #$0C40
	STX.w $504C
	INX
	STX.w $504E
	INX
	STX.w $5050
	INX
	STX.w $5052
	LDA.b #$40
	STA.b $41
	LDA.b $43
	STA.b $44
	LDA.b #$18
	STA.w $5055
	STA.w $5057
	STA.w $5059
	STA.w $505B
	STA.w $505D
	STZ.w $505C
	BRA.b ADDR_07E4B9

ADDR_07E487:
	LDA.b $41
	BNE.b ADDR_07E44C
	DEC.b $44
	BNE.b ADDR_07E44C
	LDA.b $43
	STA.b $44
	LDX.w #$0000
	LDY.w #$0004
	SEC
ADDR_07E49A:
	LDA.b $46,x
	SBC.b $4C,x
	STA.b $46,x
	BCS.b ADDR_07E4A8
	CLC
	ADC.b #$0A
	STA.b $46,x
	CLC
ADDR_07E4A8:
	INX
	DEY
	BNE.b ADDR_07E49A
	BCS.b ADDR_07E4B9
	LDX.w #$0000
	STX.b $46
	STX.b $48
	LDA.b #$01
	TSB.b $41
ADDR_07E4B9:
	LDA.b $49
	BNE.b ADDR_07E4E2
	LDA.b #$FF
	STA.w $5054
	LDA.b $48
	BNE.b ADDR_07E4E7
	LDA.b #$FF
	STA.w $5056
	LDA.b $47
	BNE.b ADDR_07E4EC
	LDA.b #$FF
	STA.w $5058
	LDA.b $46
	BNE.b ADDR_07E4F1
	LDA.b #$FF
	STA.w $505A
	LDA.b #$01
	TSB.b $41
	RTS

ADDR_07E4E2:
	LDA.b $49
	STA.w $5054
ADDR_07E4E7:
	LDA.b $48
	STA.w $5056
ADDR_07E4EC:
	LDA.b $47
	STA.w $5058
ADDR_07E4F1:
	LDA.b $46
	STA.w $505A
ADDR_07E4F6:
	RTS

ADDR_07E4F7:
	LDA.b $20
	BEQ.b ADDR_07E4F6
	BPL.b $5A									; Note: ADDR_07E557
	AND.b #$7F
	db $85										; Note: STA.b $00
