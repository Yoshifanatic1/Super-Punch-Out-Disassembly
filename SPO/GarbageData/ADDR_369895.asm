; Note: Duplicate of the code found at $009CA4
	STY.w DMA[$00].SourceLo
	LDY.w #$0010
	STY.w DMA[$00].SizeLo
	STA.w !REGISTER_DMAEnable
	INX
	BRA.b $A4

ADDR_3698A4:
	PLB
	PLD
	RTS

ADDR_3698A7:
	LDA.b #$82
	BRA.b ADDR_3698AD

ADDR_3698AB:
	LDA.b #$81
ADDR_3698AD:
	STA.w $0049
ADDR_3698B0:
	JSR.w $36C09C
	LDA.w $0049
	BNE.b ADDR_3698B0
	JMP.w $36C09C

ADDR_3698BB:
	LDA.w $0000,y
	STA.b !REGISTER_VRAMAddressIncrementValue
	LDA.w $0001,y
	STA.b !REGISTER_OAMSizeAndDataAreaDesignation
	LDA.w $0002,y
	STA.b !REGISTER_BGModeAndTileSizeSetting
	LDX.w $0003,y
	STX.b !REGISTER_BG1AddressAndSize 
	LDX.w $0005,y
	STX.b !REGISTER_BG3AddressAndSize 
	LDX.w $0007,y
	STX.b !REGISTER_BG1And2TileDataDesignation
	LDX.w $0009,y
	STX.w $0710
	LDX.w $000B,y
	STX.w $0712
	LDX.w $000D,y
	STX.w $0714
	LDX.w $000F,y
	STX.w $0716
	LDX.w $0011,y
	STX.w $0718
	LDX.w $0013,y
	STX.w $071A
	LDA.w $0015,y
	STA.w $070F
	LDX.w $0016,y
	STX.b !REGISTER_MainScreenLayers
	STX.w $0760
	STX.w $0768
	LDX.w $0018,y
	STX.b !REGISTER_ColorMathInitialSettings
	STX.w $0762
	STX.w $076A
	RTS

ADDR_36991A:
	STY.w $0380
	LDY.w #$8000
	STY.w $0382
	LDA.b #$80
	STA.w $037F
	LDA.b #$7F
	STA.w $0384
	STX.w $0385
	STA.w $0387
	LDA.b #$80
	STA.w $037D
	RTS

ADDR_369939:
	LDY.w #$7F8000
	STY.w DMA[$00].SourceLo
	LDA.b #$7F8000>>16
	STA.w DMA[$00].SourceBank
	STX.w DMA[$00].SizeLo
	LDA.b #$01
	STA.w !REGISTER_DMAEnable
	RTS

ADDR_36994D:
	REP.b #$20
	LDX.w #$0000
	STX.b $16
	LDX.w #$0010
ADDR_369957:
	STZ.b $18
	DEX
	BNE.b ADDR_369957
	SEP.b #$20
	RTS

ADDR_36995F:
	REP.b #$20
	LDX.w #$4C00
	STX.b $16
	LDX.w #$5000
	LDY.w #$0400
	LDA.w #$00FF
ADDR_36996F:
	STA.b $18
	STA.l $7E0000,x
	INX
	INX
	DEY
	BNE.b ADDR_36996F
	SEP.b #$20
	RTS

ADDR_36997D:
	LDA.b $00
	db $30											; Note: BMI.b 
