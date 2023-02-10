@asar 1.81

; Modify these as needed
lorom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $0880CF				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 3204				; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.
!Bank = 08					; Affects the bank byte for the label used in JSR/JMP instructions.

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
	!Input1 #= !Input1&$0F
if !Pass == 1
	print "	%SPO_PlayerScriptOp00_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op16()
	!Input1 #= !Input1&$0F
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp10_WaitYThenMoveHorizontallyByX($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op32()
	!Input1 #= !Input1&$0F
	%readbyte(Input2)
	%readbyte(Input3)
if !Pass == 1
	print "	%SPO_PlayerScriptOp20_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),")"
endif
endmacro

macro Op48()
	!Input1 #= !Input1&$0F
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp30_DisplayFrameYForXFrames($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op64()
	!Input1 #= !Input1&$0F
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
if !Pass == 1
	print "	%SPO_PlayerScriptOp40_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),")"
endif
endmacro

macro Op128()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp80_JumpToScriptAddress(DATA_!Bank",hex(!Input1, 4),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op129()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp81_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op130()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp82_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op131()
if !Pass == 1
	print "	%SPO_PlayerScriptOp83_UnknownOpcode()"
endif
endmacro

macro Op132()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp84_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op133()
if !Pass == 1
	print "	%SPO_PlayerScriptOp85_UnknownOpcode()"
endif
endmacro

macro Op134()
	%readword(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input1+(!ROMOffset&$FF0000)
	!Input5 #= !Input2+(!ROMOffset&$FF0000)
	!Input6 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
	%HandleJump(!Input5)
	%HandleJump(!Input6)
if !Pass == 1
	print "	%SPO_PlayerScriptOp86_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op135()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp87_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op136()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp88_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op137()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp89_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op138()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp8A_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op139()
if !Pass == 1
	print "	%SPO_PlayerScriptOp8B_UnknownOpcode()"
endif
endmacro

macro Op140()
if !Pass == 1
	print "	%SPO_PlayerScriptOp8C_UnknownOpcode()"
endif
endmacro

macro Op141()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp8D_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op142()
	%readword(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp8E_UnknownOpcode($",hex(!Input1, 4),")"
endif
endmacro

macro Op143()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp8F_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op144()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp90_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op145()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp91_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op146()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp92_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op147()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp93_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op148()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp94_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op149()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp95_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op150()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp96_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op151()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp97_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op152()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp98_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op153()
if !Pass == 1
	print "	%SPO_PlayerScriptOp99_UnknownOpcode()"
endif
endmacro

macro Op154()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp9A_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op155()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
	%readbyte(Input6)
if !Pass == 1
	print "	%SPO_PlayerScriptOp9B_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),", $",hex(!Input6, 2),")"
endif
endmacro

macro Op156()
if !Pass == 1
	print "	%SPO_PlayerScriptOp9C_UnknownOpcode()"
endif
endmacro

macro Op157()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOp9D_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op158()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOp9E_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op159()
if !Pass == 1
	print "	%SPO_PlayerScriptOp9F_ToggleTransparency()"
endif
endmacro

macro Op160()
if !Pass == 1
	print "	%SPO_PlayerScriptOpA0_UnknownOpcode()"
endif
endmacro

macro Op161()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpA1_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op162()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpA2_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op163()
if !Pass == 1
	print "	%SPO_PlayerScriptOpA3_UnknownOpcode()"
endif
endmacro

macro Op164()
	%readword(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
	!Input5 #= !Input1+(!ROMOffset&$FF0000)
	!Input6 #= !Input2+(!ROMOffset&$FF0000)
	!Input7 #= !Input3+(!ROMOffset&$FF0000)
	!Input8 #= !Input4+(!ROMOffset&$FF0000)
	%HandleJump(!Input5)
	%HandleJump(!Input6)
	%HandleJump(!Input7)
	%HandleJump(!Input8)
if !Pass == 1
	print "	%SPO_PlayerScriptOpA4_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),", DATA_!Bank",hex(!Input4, 4),")"
endif
endmacro

macro Op165()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpA5_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op166()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+(!ROMOffset&$FF0000)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%SPO_PlayerScriptOpA6_UnknownOpcode($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op167()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpA7_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op168()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpA8_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op169()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpA9_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op170()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpAA_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op171()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpAB_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op172()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpAC_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op173()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpAD_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op174()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpAE_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op175()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpAF_WaitXFrames($",hex(!Input1, 2),")"
endif
endmacro

macro Op176()
if !Pass == 1
	print "	%SPO_PlayerScriptOpB0_UnknownOpcode()"
endif
endmacro

macro Op177()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpB1_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op178()
if !Pass == 1
	print "	%SPO_PlayerScriptOpB2_UnknownOpcode()"
endif
endmacro

macro Op179()
if !Pass == 1
	print "	%SPO_PlayerScriptOpB3_UnknownOpcode()"
endif
endmacro

macro Op180()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpB4_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op181()
if !Pass == 1
	print "	%SPO_PlayerScriptOpB5_UnknownOpcode()"
endif
endmacro

macro Op182()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input1+(!ROMOffset&$FF0000)
	!Input4 #= !Input2+(!ROMOffset&$FF0000)
	%HandleJump(!Input3)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_PlayerScriptOpB6_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op183()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpB7_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op184()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpB8_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op185()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpB9_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op186()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
	%readbyte(Input6)
	%readbyte(Input7)
	%readbyte(Input8)
	%readbyte(Input9)
	%readbyte(Input10)
	%readbyte(Input11)
	%readbyte(Input12)
	%readbyte(Input13)
	%readbyte(Input14)
if !Pass == 1
	print "	%SPO_PlayerScriptOpBA_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),", $",hex(!Input6, 2),", $",hex(!Input7, 2),", $",hex(!Input8, 2),", $",hex(!Input9, 2),", $",hex(!Input10, 2),", $",hex(!Input11, 2),", $",hex(!Input12, 2),", $",hex(!Input13, 2),", $",hex(!Input14, 2),")"
endif
endmacro

macro Op187()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input1+(!ROMOffset&$FF0000)
	!Input4 #= !Input2+(!ROMOffset&$FF0000)
	%HandleJump(!Input3)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_PlayerScriptOpBB_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op188()
if !Pass == 1
	print "	%SPO_PlayerScriptOpBC_UnknownOpcode()"
endif
endmacro

macro Op189()
if !Pass == 1
	print "	%SPO_PlayerScriptOpBD_UnknownOpcode()"
endif
endmacro

macro Op190()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpBE_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op191()
if !Pass == 1
	print "	%SPO_PlayerScriptOpBF_UnknownOpcode()"
endif
endmacro

macro Op192()
if !Pass == 1
	print "	%SPO_PlayerScriptOpC0_UnknownOpcode()"
endif
endmacro

macro Op193()
if !Pass == 1
	print "	%SPO_PlayerScriptOpC1_UnknownOpcode()"
endif
endmacro

macro Op194()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpC2_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op195()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_PlayerScriptOpC3_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op196()
if !Pass == 1
	print "	%SPO_PlayerScriptOpC4_UnknownOpcode()"
endif
endmacro

macro Op197()
if !Pass == 1
	print "	%SPO_PlayerScriptOpC5_UnknownOpcode()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op198()
if !Pass == 1
	print "	%SPO_PlayerScriptOpC6_UnknownOpcode()"
endif
endmacro

macro Op199()
	%readword(Input1)
	%readword(Input2)
	!Input3 #= !Input1+(!ROMOffset&$FF0000)
	!Input4 #= !Input2+(!ROMOffset&$FF0000)
	%HandleJump(!Input3)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_PlayerScriptOpC7_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op200()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_PlayerScriptOpC8_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op201()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 2)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1 < 128
			if !Input1&$F0 > $40
				%Op201()
			else
				!Input2 #= !Input1&$F0
				%Op!Input2()
			endif
		elseif !Input1 > 200
			%Op201()
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
	if !Input1 < 128
		if !Input1&$F0 > $40
			%Op201()
		else
			!Input2 #= !Input1&$F0
			%Op!Input2()
		endif
	elseif !Input1 > 200
		%Op201()
	else
		%Op!Input1()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
