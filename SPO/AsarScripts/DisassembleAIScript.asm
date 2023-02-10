@asar 1.81

; Modify these as needed
lorom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $0CDF67				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 217				; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.
!Bank = 0C					; Affects the bank byte for the label used in JSR/JMP instructions.

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
if !Pass == 1
	print "	%SPO_AIScriptOp00_ReturnFromScriptSubroutine()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op2()
if !Pass == 1
	print "	%SPO_AIScriptOp02_UnknownOpcode()"
endif
endmacro

macro Op4()
if !Pass == 1
	print "	%SPO_AIScriptOp04_UnknownOpcode()"
endif
endmacro

macro Op6()
if !Pass == 1
	print "	%SPO_AIScriptOp06_UnknownOpcode()"
endif
endmacro

macro Op8()
	%Op103()
endmacro

macro Op10()
if !Pass == 1
	print "	%SPO_AIScriptOp0A_UnknownOpcode()"
endif
endmacro

macro Op12()
	%Op103()
endmacro

macro Op14()
	%Op103()
endmacro

macro Op16()
	%readword(Input1)
	%readbyte(Input2)
	%readword(Input3)
	!Input4 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_AIScriptOp10_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op18()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
	%readbyte(Input6)
	%readbyte(Input7)
	%readbyte(Input8)
if !Pass == 1
	print "	%SPO_AIScriptOp12_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),", $",hex(!Input6, 2),", $",hex(!Input7, 2),", $",hex(!Input8, 2),")"
endif
endmacro

macro Op20()
	%Op103()
endmacro

macro Op22()
	%Op103()
endmacro

macro Op24()
	%Op103()
endmacro

macro Op26()
	%Op103()
endmacro

macro Op28()
	%Op103()
endmacro

macro Op30()
	%Op103()
endmacro

macro Op32()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp20_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op34()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp22_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op36()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp24_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op38()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp26_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op40()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp28_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op42()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp2A_WaitXFrames($",hex(!Input1, 2),")"
endif
endmacro

macro Op44()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp2C_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op46()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AIScriptOp2E_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op48()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp30_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op50()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp32_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op52()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp34_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op54()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp36_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op56()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp38_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op58()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp3A_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op60()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_AIScriptOp3C_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op62()
	%Op103()
endmacro

macro Op64()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AIScriptOp40_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op66()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AIScriptOp42_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op68()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AIScriptOp44_CallScriptSubroutine(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op70()
	%Op103()
endmacro

macro Op72()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AIScriptOp48_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op74()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_AIScriptOp4A_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op76()
	%Op103()
endmacro

macro Op78()
	%Op103()
endmacro

macro Op80()
	%Op103()
endmacro

macro Op82()
	%Op103()
endmacro

macro Op84()
	%Op103()
endmacro

macro Op86()
	%Op103()
endmacro

macro Op88()
	%Op103()
endmacro

macro Op90()
	%Op103()
endmacro

macro Op92()
	%Op103()
endmacro

macro Op94()
	%Op103()
endmacro

macro Op96()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+(!ROMOffset&$FF0000)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%SPO_AIScriptOp60_UnknownOpcode($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op98()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+(!ROMOffset&$FF0000)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%SPO_AIScriptOp62_UnknownOpcode($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op100()
	%Op103()
endmacro

macro Op102()
	%readbyte(Input1)
	%readword(Input2)
	!Input3 #= !Input2+(!ROMOffset&$FF0000)
	%HandleJump(!Input3)
if !Pass == 1
	print "	%SPO_AIScriptOp66_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),")"
endif
endmacro

macro Op103()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 2)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1&$01 == $01
			%Op103()
		elseif !Input1 > 102
			%Op103()
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
		%Op103()
	elseif !Input1 > 102
		%Op103()
	else
		%Op!Input1()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
