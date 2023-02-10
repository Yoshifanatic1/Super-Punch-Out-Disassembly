@asar 1.81

; Modify these as needed
lorom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $0D8EBE				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 133				; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.
!Bank = 0D					; Affects the bank byte for the label used in JSR/JMP instructions.

; Don't touch these
!Input1 = $00
!Input2 = $00
!Output = ""
!ByteCounter = 0
!LoopCounter = 0
!Pass = 0
!CurrentOffset = 0

macro GetOpcode()
	!Input1 #= read1(!ROMOffset+!ByteCounter)
	;!Input1 #= !LoopCounter
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readbyte(Input)
	!<Input> #= read1(!ROMOffset+!ByteCounter)
	;!<Input> = $01
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readword(Input)
	!<Input> #= read2(!ROMOffset+!ByteCounter)
	;!<Input> = $0123
	!ByteCounter #= !ByteCounter+2
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro PrintLabel(Address)
if defined("ROM_<Address>") == 1
	if !ROM_<Address> == 1
		print ""
	endif
	print "DATA_",hex(!ROMOffset+!ByteCounter, 6),":"
endif
endmacro

macro DefineLabelAfterNoPassOpcode(Address)
	!ROM_<Address> = 1
endmacro

macro HandleJump(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro Op0()
	%readbyte(Input1)
	if !Input1&$01 == $01
		if !Pass == 1
			print "	Invalid $00 opcode: $",hex(!Input1, 2)
		endif
	elseif !Input1 > 88
		if !Pass == 1
			print "	Invalid $00 opcode: $",hex(!Input1, 2)
		endif
	else
		%Op0_Sub!Input1()
	endif
endmacro

macro Op0_Sub0()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_00_UnknownOpcode()"
endif
endmacro

macro Op0_Sub2()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_02_UnknownOpcode()"
endif
endmacro

macro Op0_Sub4()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_04_UnknownOpcode()"
endif
endmacro

macro Op0_Sub6()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_06_UnknownOpcode()"
endif
endmacro

macro Op0_Sub8()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_08_UnknownOpcode()"
endif
endmacro

macro Op0_Sub10()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_0A_UnknownOpcode()"
endif
endmacro

macro Op0_Sub12()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_0C_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op0_Sub14()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input1+(!ROMOffset&$FF0000)
	!Input4 #= !Input2+(!ROMOffset&$FF0000)
	%HandleJump(!Input3)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_0E_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op0_Sub16()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_10_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op0_Sub18()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_12_UnknownOpcode()"
endif
endmacro

macro Op0_Sub20()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_14_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op0_Sub22()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_16_UnknownOpcode($",hex(!Input1, 2),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op0_Sub24()
	%readword(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
	%readword(Input5)
	%readword(Input6)
	!Input7 #= !Input1+(!ROMOffset&$FF0000)
	!Input8 #= !Input2+(!ROMOffset&$FF0000)
	!Input9 #= !Input3+(!ROMOffset&$FF0000)
	!Input10 #= !Input4+(!ROMOffset&$FF0000)
	!Input11 #= !Input5+(!ROMOffset&$FF0000)
	!Input12 #= !Input6+(!ROMOffset&$FF0000)
	%HandleJump(!Input7)
	%HandleJump(!Input8)
	%HandleJump(!Input9)
	%HandleJump(!Input10)
	%HandleJump(!Input11)
	%HandleJump(!Input12)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_18_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),", DATA_!Bank",hex(!Input4, 4),", DATA_!Bank",hex(!Input5, 4),", DATA_!Bank",hex(!Input6, 4),")"
endif
endmacro

macro Op0_Sub26()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_1A_UnknownOpcode()"
endif
endmacro

macro Op0_Sub28()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_1C_UnknownOpcode()"
endif
endmacro

macro Op0_Sub30()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_1E_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op0_Sub32()
	%readbyte(Input1)
	%readword(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readword(Input5)
	%readbyte(Input6)
	%readbyte(Input7)
	%readword(Input8)
	%readword(Input9)
	!Input10 #= !Input2+(!ROMOffset&$FF0000)
	!Input11 #= !Input5+(!ROMOffset&$FF0000)
	!Input12 #= !Input8+(!ROMOffset&$FF0000)
	!Input13 #= !Input9+(!ROMOffset&$FF0000)
	%HandleJump(!Input10)
	%HandleJump(!Input11)
	%HandleJump(!Input12)
	%HandleJump(!Input13)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_20_UnknownOpcode($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", DATA_!Bank",hex(!Input5, 4),", $",hex(!Input6, 2),", $",hex(!Input7, 2),", DATA_!Bank",hex(!Input8, 4),", DATA_!Bank",hex(!Input9, 4),")"
endif
endmacro

macro Op0_Sub34()
	%readword(Input1)
	%readbyte(Input2)
	%readword(Input3)
	!Input4 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_22_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op0_Sub36()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_24_UnknownOpcode()"
endif
endmacro

macro Op0_Sub38()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_26_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op0_Sub40()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_28_UnknownOpcode()"
endif
endmacro

macro Op0_Sub42()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_2A_UnknownOpcode()"
endif
endmacro

macro Op0_Sub44()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_2C_UnknownOpcode()"
endif
endmacro

macro Op0_Sub46()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_2E_UnknownOpcode()"
endif
endmacro

macro Op0_Sub48()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_30_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op0_Sub50()
	%readword(Input1)
	%readbyte(Input2)
	%readword(Input3)
	!Input4 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_32_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op0_Sub52()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
	%readbyte(Input6)
	%readbyte(Input7)
	%readbyte(Input8)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_34_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),", $",hex(!Input6, 2),", $",hex(!Input7, 2),", $",hex(!Input8, 2),")"
endif
endmacro

macro Op0_Sub54()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_36_UnknownOpcode()"
endif
endmacro

macro Op0_Sub56()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_38_UnknownOpcode()"
endif
endmacro

macro Op0_Sub58()
	%readword(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
	%readword(Input5)
	%readword(Input6)
	%readword(Input7)
	%readword(Input8)
	!Input9 #= !Input1+(!ROMOffset&$FF0000)
	!Input10 #= !Input2+(!ROMOffset&$FF0000)
	!Input11 #= !Input3+(!ROMOffset&$FF0000)
	!Input12 #= !Input4+(!ROMOffset&$FF0000)
	!Input13 #= !Input5+(!ROMOffset&$FF0000)
	!Input14 #= !Input6+(!ROMOffset&$FF0000)
	!Input15 #= !Input7+(!ROMOffset&$FF0000)
	!Input16 #= !Input8+(!ROMOffset&$FF0000)
	%HandleJump(!Input9)
	%HandleJump(!Input10)
	%HandleJump(!Input11)
	%HandleJump(!Input12)
	%HandleJump(!Input13)
	%HandleJump(!Input14)
	%HandleJump(!Input15)
	%HandleJump(!Input16)

if !Pass == 1
	print "	%SPO_AnimScriptOp00_3A_PickRandomAction(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),", DATA_!Bank",hex(!Input4, 4),", DATA_!Bank",hex(!Input5, 4),", DATA_!Bank",hex(!Input6, 4),", DATA_!Bank",hex(!Input7, 4),", DATA_!Bank",hex(!Input8, 4),")"
endif	
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op0_Sub60()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_3C_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op0_Sub62()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_3E_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),")"
endif
endmacro

macro Op0_Sub64()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_40_UnknownOpcode()"
endif
endmacro

macro Op0_Sub66()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_42_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op0_Sub68()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_44_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op0_Sub70()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_46_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op0_Sub72()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_48_UnknownOpcode()"
endif
endmacro

macro Op0_Sub74()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_4A_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op0_Sub76()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_4C_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op0_Sub78()
if !Pass == 1
	print "	%SPO_AnimScriptOp00_4E_UnknownOpcode()"
endif
endmacro

macro Op0_Sub80()
	%readword(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_50_UnknownOpcode($",hex(!Input1, 4),")"
endif
endmacro

macro Op0_Sub82()
	%readword(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_52_UnknownOpcode(DATA_09",hex(!Input1, 4),")"
endif
endmacro

macro Op0_Sub84()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_54_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op0_Sub86()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_56_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op0_Sub88()
	%readbyte(Input1)
	%readbyte(Input2)
	%readword(Input3)
	%readword(Input4)
	%readword(Input5)
	%readword(Input6)
if !Pass == 1
	print "	%SPO_AnimScriptOp00_58_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 4),", $",hex(!Input4, 4),", $",hex(!Input5, 4),", $",hex(!Input6, 4),")"
endif
endmacro

macro Op2()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp02_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op4()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp04_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op6()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp06_SetLoopCounter($",hex(!Input1, 2),")"
endif
endmacro

macro Op8()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp08_LoopAndDecCounter(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op10()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp0A_UnknownOpcode($",hex(!Input1, 2),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op12()
if !Pass == 1
	print "	%SPO_AnimScriptOp0C_UnknownOpcode()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op14()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp0E_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op16()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp10_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op18()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp12_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op20()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
if !Pass == 1
	print "	%SPO_AnimScriptOp14_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),")"
endif
endmacro

macro Op22()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp16_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op24()
if !Pass == 1
	print "	%SPO_AnimScriptOp18_UnknownOpcode()"
endif
endmacro

macro Op26()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp1A_RepositionRelative($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op28()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp1C_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op30()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp1E_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op32()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp20_DisplayPoseXForYFrames($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op34()
if !Pass == 1
	print "	%SPO_AnimScriptOp22_FaceLeft()"
endif
endmacro

macro Op36()
if !Pass == 1
	print "	%SPO_AnimScriptOp24_FaceRight()"
endif
endmacro

macro Op38()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp26_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op40()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
if !Pass == 1
	print "	%SPO_AnimScriptOp28_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),")"
endif
endmacro

macro Op42()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp2A_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op44()
if !Pass == 1
	print "	%SPO_AnimScriptOp2C_UnknownOpcode()"
endif
endmacro

macro Op46()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp2E_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op48()
if !Pass == 1
	print "	%SPO_AnimScriptOp30_UnknownOpcode()"
endif
endmacro

macro Op50()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp32_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op52()
if !Pass == 1
	print "	%SPO_AnimScriptOp34_UnknownOpcode()"
endif
endmacro

macro Op54()
if !Pass == 1
	print "	%SPO_AnimScriptOp36_UnknownOpcode()"
endif
endmacro

macro Op56()
if !Pass == 1
	print "	%SPO_AnimScriptOp38_UnknownOpcode()"
endif
endmacro

macro Op58()
if !Pass == 1
	print "	%SPO_AnimScriptOp3A_UnknownOpcode()"
endif
endmacro

macro Op60()
	%readword(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp3C_UnknownOpcode($00",hex(!Input1, 4),")"
endif
endmacro

macro Op62()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp3E_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op64()
if !Pass == 1
	print "	%SPO_AnimScriptOp40_UnknownOpcode()"
endif
endmacro

macro Op66()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp42_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op68()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp44_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op70()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp46_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op72()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp48_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op74()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp4A_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op76()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp4C_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op78()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp4E_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op80()
if !Pass == 1
	print "	%SPO_AnimScriptOp50_UnknownOpcode()"
endif
endmacro

macro Op82()
if !Pass == 1
	print "	%SPO_AnimScriptOp52_UnknownOpcode()"
endif
endmacro

macro Op84()
if !Pass == 1
	print "	%SPO_AnimScriptOp54_UnknownOpcode()"
endif
endmacro

macro Op86()
if !Pass == 1
	print "	%SPO_AnimScriptOp56_UnknownOpcode()"
endif
endmacro

macro Op88()
if !Pass == 1
	print "	%SPO_AnimScriptOp58_UnknownOpcode()"
endif
endmacro

macro Op90()
if !Pass == 1
	print "	%SPO_AnimScriptOp5A_UnknownOpcode()"
endif
endmacro

macro Op92()
if !Pass == 1
	print "	%SPO_AnimScriptOp5C_UnknownOpcode()"
endif
endmacro

macro Op94()
if !Pass == 1
	print "	%SPO_AnimScriptOp5E_UnknownOpcode()"
endif
endmacro

macro Op96()
if !Pass == 1
	print "	%SPO_AnimScriptOp60_UnknownOpcode()"
endif
endmacro

macro Op98()
if !Pass == 1
	print "	%SPO_AnimScriptOp62_UnknownOpcode()"
endif
endmacro

macro Op100()
if !Pass == 1
	print "	%SPO_AnimScriptOp64_UnknownOpcode()"
endif
endmacro

macro Op102()
if !Pass == 1
	print "	%SPO_AnimScriptOp66_UnknownOpcode()"
endif
endmacro

macro Op104()
if !Pass == 1
	print "	%SPO_AnimScriptOp68_UnknownOpcode()"
endif
endmacro

macro Op106()
if !Pass == 1
	print "	%SPO_AnimScriptOp6A_UnknownOpcode()"
endif
endmacro

macro Op108()
if !Pass == 1
	print "	%SPO_AnimScriptOp6C_UnknownOpcode()"
endif
endmacro

macro Op110()
if !Pass == 1
	print "	%SPO_AnimScriptOp6E_UnknownOpcode()"
endif
endmacro

macro Op112()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp70_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op114()
if !Pass == 1
	print "	%SPO_AnimScriptOp72_UnknownOpcode()"
endif
endmacro

macro Op116()
if !Pass == 1
	print "	%SPO_AnimScriptOp74_UnknownOpcode()"
endif
endmacro

macro Op118()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp76_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),")"
endif
endmacro

macro Op120()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
if !Pass == 1
	print "	%SPO_AnimScriptOp78_UnknownOpcode($000A",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),")"
endif
endmacro

macro Op122()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_AnimScriptOp7A_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op124()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp7C_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op126()
if !Pass == 1
	print "	%SPO_AnimScriptOp7E_UnknownOpcode()"
endif
endmacro

macro Op128()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp80_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op130()
if !Pass == 1
	print "	%SPO_AnimScriptOp82_UnknownOpcode()"
endif
endmacro

macro Op132()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp84_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op134()
if !Pass == 1
	print "	%SPO_AnimScriptOp86_UnknownOpcode()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op136()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_AnimScriptOp88_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op138()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AnimScriptOp8A_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op139()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 2)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1&$01 == $01
			%Op139()
		elseif !Input1 > 138
			%Op139()
		else
			%Op!Input1()
		endif
		!LoopCounter #= !LoopCounter+1
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
endif
	!Pass = 1
while !ByteCounter < !MaxBytes
	%PrintLabel(!CurrentOffset)
	%GetOpcode()
	if !Input1&$01 == $01
		%Op139()
	elseif !Input1 > 138
		%Op139()
	else
		%Op!Input1()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
