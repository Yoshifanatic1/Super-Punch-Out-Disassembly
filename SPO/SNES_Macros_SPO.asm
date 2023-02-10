
!SPO_DefinedRelativeLabels = 0

;--------------------------------------------------------------------

macro SPO_AIScriptOp00_ReturnFromScriptSubroutine()
	db $00
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp02_UnknownOpcode()
	db $02
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp04_UnknownOpcode()
	db $04
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp06_UnknownOpcode()
	db $06
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp0A_UnknownOpcode()
	db $0A
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp10_UnknownOpcode(Param1, Param2, Param3)
	db $10 : dw <Param1> : db <Param2> : dw <Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp12_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8)
	db $12 : db <Param1>,<Param2>,<Param3>,<Param4>,<Param5>,<Param6>,<Param7>,<Param8>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp20_UnknownOpcode(Param1)
	db $20 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp22_UnknownOpcode(Param1)
	db $22 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp24_UnknownOpcode(Param1)
	db $24 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp26_UnknownOpcode(Param1)
	db $26 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp28_UnknownOpcode(Param1)
	db $28 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp2A_WaitXFrames(Param1)
	db $2A : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp2C_UnknownOpcode(Param1)
	db $2C : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp2E_UnknownOpcode(Param1)
	db $2E : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp30_UnknownOpcode(Param1)
	db $30 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp32_UnknownOpcode(Param1)
	db $32 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp34_UnknownOpcode(Param1)
	db $34 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp36_UnknownOpcode(Param1)
	db $36 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp38_UnknownOpcode(Param1)
	db $38 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp3A_UnknownOpcode(Param1)
	db $3A : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp3C_UnknownOpcode(Param1)
	db $3C : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp40_UnknownOpcode(Param1)
	db $40 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp42_UnknownOpcode(Param1)
	db $42 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp44_CallScriptSubroutine(Param1)
	db $44 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp48_UnknownOpcode(Param1)
	db $48 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp4A_UnknownOpcode(Param1)
	db $4A : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp60_UnknownOpcode(Param1, Param2)
	db $60 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp62_UnknownOpcode(Param1, Param2)
	db $62 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AIScriptOp66_UnknownOpcode(Param1, Param2)
	db $66 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_00_UnknownOpcode()
	db $00 : db $00
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_02_UnknownOpcode()
	db $00 : db $02
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_04_UnknownOpcode()
	db $00 : db $04
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_06_UnknownOpcode()
	db $00 : db $06
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_08_UnknownOpcode()
	db $00 : db $08
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_0A_UnknownOpcode()
	db $00 : db $0A
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_0C_UnknownOpcode(Param1, Param2)
	db $00 : db $0C : dw <Param1> : db <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_0E_UnknownOpcode(Param1, Param2)
	db $00 : db $0E : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_10_UnknownOpcode(Param1, Param2)
	db $00 : db $10 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_12_UnknownOpcode()
	db $00 : db $12
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_14_UnknownOpcode(Param1)
	db $00 : db $14 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_16_UnknownOpcode(Param1)
	db $00 : db $16 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_18_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6)
	db $00 : db $18 : dw <Param1>,<Param2>,<Param3>,<Param4>,<Param5>,<Param6>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_1A_UnknownOpcode()
	db $00 : db $1A
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_1C_UnknownOpcode()
	db $00 : db $1C
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_1E_UnknownOpcode(Param1)
	db $00 : db $1E : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_20_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9)
	db $00 : db $20 : db <Param1> : dw <Param2> : db <Param3>,<Param4> : dw <Param5> : db <Param6>,<Param7> : dw <Param8>,<Param9>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_22_UnknownOpcode(Param1, Param2, Param3)
	db $00 : db $22 : dw <Param1> : db <Param2> : dw <Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_24_UnknownOpcode()
	db $00 : db $24
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_26_UnknownOpcode(Param1)
	db $00 : db $26 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_28_UnknownOpcode()
	db $00 : db $28
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_2A_UnknownOpcode()
	db $00 : db $2A
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_2C_UnknownOpcode()
	db $00 : db $2C
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_2E_UnknownOpcode()
	db $00 : db $2E
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_30_UnknownOpcode(Param1)
	db $00 : db $30 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_32_UnknownOpcode(Param1, Param2, Param3)
	db $00 : db $32 : dw <Param1> : db <Param2> : dw <Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_34_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8)
	db $00 : db $34 : db <Param1>,<Param2>,<Param3>,<Param4>,<Param5>,<Param6>,<Param7>,<Param8>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_36_UnknownOpcode()
	db $00 : db $36
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_38_UnknownOpcode()
	db $00 : db $38
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_3A_PickRandomAction(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8)
	db $00 : db $3A : dw <Param1>,<Param2>,<Param3>,<Param4>,<Param5>,<Param6>,<Param7>,<Param8>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_3C_UnknownOpcode(Param1)
	db $00 : db $3C : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_3E_UnknownOpcode(Param1, Param2, Param3, Param4, Param5)
	db $00 : db $3E : db <Param1>,<Param2>,<Param3>,<Param4>,<Param5>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_40_UnknownOpcode()
	db $00 : db $40
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_42_UnknownOpcode(Param1)
	db $00 : db $42 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_44_UnknownOpcode(Param1)
	db $00 : db $44 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_46_UnknownOpcode(Param1)
	db $00 : db $46 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_48_UnknownOpcode()
	db $00 : db $48
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_4A_UnknownOpcode(Param1, Param2)
	db $00 : db $4A : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_4C_UnknownOpcode(Param1)
	db $00 : db $4C : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_4E_UnknownOpcode()
	db $00 : db $4E
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_50_UnknownOpcode(Param1)
	db $00 : db $50 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_52_UnknownOpcode(Param1)
	db $00 : db $52 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_54_UnknownOpcode(Param1, Param2)
	db $00 : db $54 : dw <Param1> : db <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_56_UnknownOpcode(Param1, Param2)
	db $00 : db $56 : dw <Param1> : db <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp00_58_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6)
	db $00 : db $58 : db <Param1>,<Param2> : dw <Param3>,<Param4>,<Param5>,<Param6>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp02_UnknownOpcode(Param1)
	db $02 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp04_UnknownOpcode(Param1)
	db $04 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp06_SetLoopCounter(Param1)
	db $06 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp08_LoopAndDecCounter(Param1)
	db $08 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp0A_UnknownOpcode(Param1)
	db $0A : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp0C_UnknownOpcode()
	db $0C
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp0E_UnknownOpcode(Param1)
	db $0E : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp10_UnknownOpcode(Param1, Param2)
	db $10 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp12_UnknownOpcode(Param1, Param2)
	db $12 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp14_UnknownOpcode(Param1, Param2, Param3)
	db $14 : db <Param1>,<Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp16_UnknownOpcode(Param1, Param2)
	db $16 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp18_UnknownOpcode()
	db $18
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp1A_RepositionRelative(Param1, Param2)
	db $1A : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp1C_UnknownOpcode(Param1)
	db $1C : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp1E_UnknownOpcode(Param1)
	db $1E : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp20_DisplayPoseXForYFrames(Param1, Param2)
	db $20 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp22_FaceLeft()
	db $22
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp24_FaceRight()
	db $24
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp26_UnknownOpcode(Param1, Param2)
	db $26 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp28_UnknownOpcode(Param1, Param2, Param3, Param4)
	db $28 : db <Param1>,<Param2>,<Param3>,<Param4>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp2A_UnknownOpcode(Param1)
	db $2A : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp2C_UnknownOpcode()
	db $2C
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp2E_UnknownOpcode(Param1, Param2)
	db $2E : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp30_UnknownOpcode()
	db $30
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp32_UnknownOpcode(Param1)
	db $32 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp34_UnknownOpcode()
	db $34
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp36_UnknownOpcode()
	db $36
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp38_UnknownOpcode()
	db $38
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp3A_UnknownOpcode()
	db $3A
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp3C_UnknownOpcode(Param1)
	db $3C : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp3E_UnknownOpcode(Param1)
	db $3E : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp40_UnknownOpcode()
	db $40
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp42_UnknownOpcode(Param1)
	db $42 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp44_UnknownOpcode(Param1)
	db $44 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp46_UnknownOpcode(Param1)
	db $46 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp48_UnknownOpcode(Param1, Param2)
	db $48 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp4A_UnknownOpcode(Param1, Param2)
	db $4A : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp4C_UnknownOpcode(Param1, Param2)
	db $4C : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp4E_UnknownOpcode(Param1, Param2)
	db $4E : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp50_UnknownOpcode()
	db $50
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp52_UnknownOpcode()
	db $52
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp54_UnknownOpcode()
	db $54
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp56_UnknownOpcode()
	db $56
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp58_UnknownOpcode()
	db $58
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp5A_UnknownOpcode()
	db $5A
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp5C_UnknownOpcode()
	db $5C
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp5E_UnknownOpcode()
	db $5E
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp60_UnknownOpcode()
	db $60
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp62_UnknownOpcode()
	db $62
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp64_UnknownOpcode()
	db $64
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp66_UnknownOpcode()
	db $66
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp68_UnknownOpcode()
	db $68
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp6A_UnknownOpcode()
	db $6A
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp6C_UnknownOpcode()
	db $6C
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp6E_UnknownOpcode()
	db $6E
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp70_UnknownOpcode(Param1, Param2)
	db $70 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp72_UnknownOpcode()
	db $72
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp74_UnknownOpcode()
	db $74
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp76_UnknownOpcode(Param1, Param2)
	db $76 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp78_UnknownOpcode(Param1, Param2, Param3, Param4, Param5)
	db $78 : db <Param1>,<Param2>,<Param3>,<Param4>,<Param5>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp7A_UnknownOpcode(Param1, Param2, Param3)
	db $7A : db <Param1> : dw <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp7C_UnknownOpcode(Param1)
	db $7C : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp7E_UnknownOpcode()
	db $7E
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp80_UnknownOpcode(Param1)
	db $80 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp82_UnknownOpcode()
	db $82
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp84_UnknownOpcode(Param1)
	db $84 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp86_UnknownOpcode()
	db $86
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp88_UnknownOpcode(Param1,Param2)
	db $88 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_AnimScriptOp8A_UnknownOpcode(Param1)
	db $8A : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp00_UnknownOpcode(Param1)
	db $00|<Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp10_WaitYThenMoveHorizontallyByX(Param1, Param2)
	db $10|<Param1> : db <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp20_UnknownOpcode(Param1, Param2, Param3)
	db $20|<Param1> : db <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp30_DisplayFrameYForXFrames(Param1, Param2)
	db $30|<Param1> : db <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp40_UnknownOpcode(Param1, Param2, Param3, Param4)
	db $40|<Param1> : db <Param2>,<Param3>,<Param4>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp80_JumpToScriptAddress(Param1)
	db $80 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp81_UnknownOpcode(Param1)
	db $81 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp82_UnknownOpcode(Param1)
	db $82 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp83_UnknownOpcode()
	db $83
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp84_UnknownOpcode(Param1)
	db $84 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp85_UnknownOpcode()
	db $85
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp86_UnknownOpcode(Param1, Param2, Param3)
	db $86 : dw <Param1>,<Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp87_UnknownOpcode(Param1)
	db $87 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp88_UnknownOpcode(Param1)
	db $88 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp89_UnknownOpcode(Param1)
	db $89 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp8A_UnknownOpcode(Param1)
	db $8A : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp8B_UnknownOpcode()
	db $8B
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp8C_UnknownOpcode()
	db $8C
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp8D_UnknownOpcode(Param1)
	db $8D : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp8E_UnknownOpcode(Param1)
	db $8E : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp8F_UnknownOpcode(Param1)
	db $8F : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp90_UnknownOpcode(Param1)
	db $90 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp91_UnknownOpcode(Param1)
	db $91 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp92_UnknownOpcode(Param1)
	db $92 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp93_UnknownOpcode(Param1)
	db $93 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp94_UnknownOpcode(Param1, Param2)
	db $94 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp95_UnknownOpcode(Param1)
	db $95 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp96_UnknownOpcode(Param1)
	db $96 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp97_UnknownOpcode(Param1)
	db $97 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp98_UnknownOpcode(Param1)
	db $98 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp99_UnknownOpcode()
	db $99
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp9A_UnknownOpcode(Param1)
	db $9A : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp9B_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6)
	db $9B : db <Param1>,<Param2>,<Param3>,<Param4>,<Param5>,<Param6>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp9C_UnknownOpcode()
	db $9C
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp9D_UnknownOpcode(Param1)
	db $9D : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp9E_UnknownOpcode(Param1)
	db $9E : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOp9F_ToggleTransparency()
	db $9F
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA0_UnknownOpcode()
	db $A0
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA1_UnknownOpcode(Param1, Param2)
	db $A1 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA2_UnknownOpcode(Param1)
	db $A2 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA3_UnknownOpcode()
	db $A3
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA4_UnknownOpcode(Param1, Param2, Param3, Param4)
	db $A4 : dw <Param1>,<Param2>,<Param3>,<Param4>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA5_UnknownOpcode(Param1, Param2)
	db $A5 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA6_UnknownOpcode(Param1, Param2)
	db $A6 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA7_UnknownOpcode(Param1)
	db $A7 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA8_UnknownOpcode(Param1)
	db $A8 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpA9_UnknownOpcode(Param1)
	db $A9 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpAA_UnknownOpcode(Param1)
	db $AA : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpAB_UnknownOpcode(Param1)
	db $AB : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpAC_UnknownOpcode(Param1)
	db $AC : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpAD_UnknownOpcode(Param1)
	db $AD : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpAE_UnknownOpcode(Param1)
	db $AE : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpAF_WaitXFrames(Param1)
	db $AF : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB0_UnknownOpcode()
	db $B0
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB1_UnknownOpcode(Param1)
	db $B1 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB2_UnknownOpcode()
	db $B2
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB3_UnknownOpcode()
	db $B3
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB4_UnknownOpcode(Param1, Param2)
	db $B4 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB5_UnknownOpcode()
	db $B5
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB6_UnknownOpcode(Param1, Param2)
	db $B6 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB7_UnknownOpcode(Param1)
	db $B7 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB8_UnknownOpcode(Param1)
	db $B8 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpB9_UnknownOpcode(Param1)
	db $B9 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpBA_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9, Param10, Param11, Param12, Param13, Param14)
	db $BA : db <Param1>,<Param2>,<Param3>,<Param4>,<Param5>,<Param6>,<Param7>,<Param8>,<Param9>,<Param10>,<Param11>,<Param12>,<Param13>,<Param14>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpBB_UnknownOpcode(Param1, Param2)
	db $BB : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpBC_UnknownOpcode()
	db $BC
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpBD_UnknownOpcode()
	db $BD
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpBE_UnknownOpcode(Param1)
	db $BE : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpBF_UnknownOpcode()
	db $BF
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC0_UnknownOpcode()
	db $C0
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC1_UnknownOpcode()
	db $C1
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC2_UnknownOpcode(Param1)
	db $C2 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC3_UnknownOpcode(Param1)
	db $C3 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC4_UnknownOpcode()
	db $C4
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC5_UnknownOpcode()
	db $C5
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC6_UnknownOpcode()
	db $C6
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC7_UnknownOpcode(Param1, Param2)
	db $C7 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_PlayerScriptOpC8_UnknownOpcode(Param1, Param2)
	db $C8 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp00_UnknownOpcode()
	db $00
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp02_UnknownOpcode()
	db $02
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp04_UnknownOpcode()
	db $04
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp06_UnknownOpcode()
	db $06
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp08_UnknownOpcode()
	db $08
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp0A_UnknownOpcode()
	db $0A
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp0C_UnknownOpcode()
	db $0C
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp0E_UnknownOpcode()
	db $0E
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp10_UnknownOpcode()
	db $10
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp12_UnknownOpcode()
	db $12
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp14_UnknownOpcode()
	db $14
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp16_UnknownOpcode()
	db $16
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp18_UnknownOpcode()
	db $18
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp1A_UnknownOpcode()
	db $1A
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp1C_UnknownOpcode()
	db $1C
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp1E_UnknownOpcode()
	db $1E
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp20_UnknownOpcode(Param1)
	db $20 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp22_UnknownOpcode(Param1)
	db $22 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp24_UnknownOpcode(Param1)
	db $24 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp26_UnknownOpcode(Param1, Param2)
	db $26 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp28_UnknownOpcode(Param1, Param2)
	db $28 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp2A_UnknownOpcode(Param1)
	db $2A : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp2C_UnknownOpcode(Param1)
	db $2C : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp2E_UnknownOpcode()
	db $2E
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp30_UnknownOpcode()
	db $30
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp32_UnknownOpcode(Param1, Param2)
	db $32 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp34_UnknownOpcode(Param1, Param2)
	db $34 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp36_UnknownOpcode(Param1, Param2)
	db $36 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp38_UnknownOpcode(Param1)
	db $38 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp3A_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9, Param10, Param11, Param12, Param13, Param14, Param15, Param16)
	db $3A : db <Param1> : dw <Param2>,<Param3>,<Param4>,<Param5>,<Param6>,<Param7>,<Param8>,<Param9>,<Param10>,<Param11>,<Param12>,<Param13>,<Param14>,<Param15>,<Param16>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp3C_UnknownOpcode(Param1)
	db $3C : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp3E_UnknownOpcode(Param1)
	db $3E : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp40_UnknownOpcode(Param1, Param2, Param3)
	db $40 : db <Param1> :  dw <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp42_UnknownOpcode()
	db $42
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp44_UnknownOpcode()
	db $44
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp46_UnknownOpcode(Param1)
	db $46 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp48_UnknownOpcode(Param1, Param2, Param3)
	db $48 : db <Param1> :  dw <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp4A_UnknownOpcode(Param1)
	db $4A : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp4C_UnknownOpcode(Param1)
	db $4C : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp4E_UnknownOpcode()
	db $4E
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp50_UnknownOpcode(Param1)
	db $50 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp52_UnknownOpcode(Param1, Param2, Param3)
	db $52 : db <Param1> :  dw <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp54_UnknownOpcode(Param1)
	db $54 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp56_UnknownOpcode(Param1)
	db $56 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_SpriteScriptOp58_UnknownOpcode(Param1, Param2)
	db $58 : dw <Param1> : db <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp00_UnknownOpcode()
	db $00
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp02_UnknownOpcode(Param1, Param2)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $02 : db <Param1>,<Param2>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp04_BranchAlways(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $04 : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp06_UnknownOpcode(Param1)
	db $06 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp08_UnknownOpcode(Param1, Param2)
	db $08 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp0A_UnknownOpcode(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $0A : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp0C_UnknownOpcode(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $0C : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp0E_UnknownOpcode(Param1)
	db $0E : db <Param1>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp10_UnknownOpcode(Param1, Param2)
	db $10 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp12_UnknownOpcode()
	db $12
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp16_UnknownOpcode(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $16 : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp18_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8)
	db $18 : db <Param1>,<Param2>,<Param3>,<Param4>,<Param5>,<Param6>,<Param7>,<Param8>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp1A_UnknownOpcode(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $1A : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp1C_UnknownOpcode()
	db $1C
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp20_UnknownOpcode(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $20 : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp22_UnknownOpcode(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $22 : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp24_UnknownOpcode(Param1, Param2, Param3, Param4, Param5)
	db $24 : db <Param1>,<Param2>,<Param3>,<Param4>,<Param5>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp26_UnknownOpcode(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $26 : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp2A_UnknownOpcode(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $2A : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels,<Param2>-RelativeLabel!SPO_DefinedRelativeLabels,<Param3>-RelativeLabel!SPO_DefinedRelativeLabels,<Param4>-RelativeLabel!SPO_DefinedRelativeLabels,<Param5>-RelativeLabel!SPO_DefinedRelativeLabels,<Param6>-RelativeLabel!SPO_DefinedRelativeLabels,<Param7>-RelativeLabel!SPO_DefinedRelativeLabels,<Param8>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp2C_UnknownOpcode(Param1, Param2)
	db $2C : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp2E_UnknownOpcode()
	db $2E
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp30_UnknownOpcode(Param1)
RelativeLabel!SPO_DefinedRelativeLabels:
	db $30 : db <Param1>-RelativeLabel!SPO_DefinedRelativeLabels
!SPO_DefinedRelativeLabels #= !SPO_DefinedRelativeLabels+1
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp32_UnknownOpcode(Param1, Param2, Param3)
	db $32 : dw <Param1> : db <Param2> : dw <Param3>
endmacro

;--------------------------------------------------------------------

macro SPO_CMAIScriptOp34_UnknownOpcode(Param1)
	db $34 : db <Param1>
endmacro

;--------------------------------------------------------------------
