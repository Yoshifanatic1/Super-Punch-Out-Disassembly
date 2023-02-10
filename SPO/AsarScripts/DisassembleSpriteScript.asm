@asar 1.81

; Modify these as needed
lorom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $0D8F49				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 85				; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.
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
if !Pass == 1
	print "	%SPO_SpriteScriptOp00_UnknownOpcode()"
endif
endmacro

macro Op2()
if !Pass == 1
	print "	%SPO_SpriteScriptOp02_UnknownOpcode()"
endif
endmacro

macro Op4()
if !Pass == 1
	print "	%SPO_SpriteScriptOp04_UnknownOpcode()"
endif
endmacro

macro Op6()
if !Pass == 1
	print "	%SPO_SpriteScriptOp06_UnknownOpcode()"
endif
endmacro

macro Op8()
if !Pass == 1
	print "	%SPO_SpriteScriptOp08_UnknownOpcode()"
endif
endmacro

macro Op10()
if !Pass == 1
	print "	%SPO_SpriteScriptOp0A_UnknownOpcode()"
endif
endmacro

macro Op12()
if !Pass == 1
	print "	%SPO_SpriteScriptOp0C_UnknownOpcode()"
endif
endmacro

macro Op14()
if !Pass == 1
	print "	%SPO_SpriteScriptOp0E_UnknownOpcode()"
endif
endmacro

macro Op16()
if !Pass == 1
	print "	%SPO_SpriteScriptOp10_UnknownOpcode()"
endif
endmacro

macro Op18()
if !Pass == 1
	print "	%SPO_SpriteScriptOp12_UnknownOpcode()"
endif
endmacro

macro Op20()
if !Pass == 1
	print "	%SPO_SpriteScriptOp14_UnknownOpcode()"
endif
endmacro

macro Op22()
if !Pass == 1
	print "	%SPO_SpriteScriptOp16_UnknownOpcode()"
endif
endmacro

macro Op24()
if !Pass == 1
	print "	%SPO_SpriteScriptOp18_UnknownOpcode()"
endif
endmacro

macro Op26()
if !Pass == 1
	print "	%SPO_SpriteScriptOp1A_UnknownOpcode()"
endif
endmacro

macro Op28()
if !Pass == 1
	print "	%SPO_SpriteScriptOp1C_UnknownOpcode()"
endif
endmacro

macro Op30()
if !Pass == 1
	print "	%SPO_SpriteScriptOp1E_UnknownOpcode()"
endif
endmacro

macro Op32()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp20_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op34()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp22_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op36()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp24_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op38()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp26_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op40()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp28_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op42()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp2A_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op44()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp2C_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op46()
if !Pass == 1
	print "	%SPO_SpriteScriptOp2E_UnknownOpcode()"
endif
endmacro

macro Op48()
if !Pass == 1
	print "	%SPO_SpriteScriptOp30_UnknownOpcode()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op50()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp32_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),")"
endif
endmacro

macro Op52()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp34_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),")"
endif
endmacro

macro Op54()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp36_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),")"
endif
endmacro

macro Op56()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp38_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op58()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
	%readword(Input5)
	%readword(Input6)
	%readword(Input7)
	%readword(Input8)
	%readword(Input9)
	%readword(Input10)
	%readword(Input11)
	%readword(Input12)
	%readword(Input13)
	%readword(Input14)
	%readword(Input15)
	%readword(Input16)
if !Pass == 1
	print "	%SPO_SpriteScriptOp3A_UnknownOpcode($0005",hex(!Input1, 2),", $",hex(!Input2, 4),", $",hex(!Input3, 4),", $",hex(!Input4, 4),", $",hex(!Input5, 4),", $",hex(!Input6, 4),", $",hex(!Input7, 4),", $",hex(!Input8, 4),", $",hex(!Input9, 4),", $",hex(!Input10, 4),", $",hex(!Input11, 4),", $",hex(!Input12, 4),", $",hex(!Input13, 4),", $",hex(!Input14, 4),", $",hex(!Input15, 4),", $",hex(!Input16, 4),")"
endif
endmacro

macro Op60()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp3C_UnknownOpcode($0005",hex(!Input1, 2),")"
endif
endmacro

macro Op62()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp3E_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op64()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_SpriteScriptOp40_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op66()
if !Pass == 1
	print "	%SPO_SpriteScriptOp42_UnknownOpcode()"
endif
endmacro

macro Op68()
if !Pass == 1
	print "	%SPO_SpriteScriptOp44_UnknownOpcode()"
endif
endmacro

macro Op70()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp46_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op72()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_SpriteScriptOp48_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op74()
	%readword(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp4A_UnknownOpcode($",hex(!Input1, 4),")"
endif
endmacro

macro Op76()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp4C_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op78()
if !Pass == 1
	print "	%SPO_SpriteScriptOp4E_UnknownOpcode()"
endif
endmacro

macro Op80()
	%readword(Input1)
	!Input2 #= !Input1+(!ROMOffset&$FF0000)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp50_UnknownOpcode(DATA_!Bank",hex(!Input1, 4),")"
endif
endmacro

macro Op82()
	%readbyte(Input1)
	%readword(Input2)
	%readword(Input3)
	!Input4 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_SpriteScriptOp52_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op84()
	%readword(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp54_UnknownOpcode($",hex(!Input1, 4),")"
endif
endmacro

macro Op86()
	%readword(Input1)
if !Pass == 1
	print "	%SPO_SpriteScriptOp56_UnknownOpcode($",hex(!Input1, 4),")"
endif
endmacro

macro Op88()
	%readword(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%SPO_SpriteScriptOp58_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op89()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 2)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1&$01 == $01
			%Op89()
		elseif !Input1 > 88
			%Op89()
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
		%Op89()
	elseif !Input1 > 88
		%Op89()
	else
		%Op!Input1()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
