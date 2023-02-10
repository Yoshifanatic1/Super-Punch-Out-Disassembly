@asar 1.81

; Modify these as needed
lorom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $0C8060				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 28 			; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.
!Bank = 0C					; Affects the bank byte for the label used in JSR/JMP instructions.

; Don't touch these
!Input1 = $00
!Input2 = $00
!Input3 = $00
!Input4 = $00
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

macro HandleBranch(Value, ByteCounter, Variable)
if !<Variable> >= <Value>
	if <Value> == $80
		!<Variable> #= (!ROMOffset+<ByteCounter>)-((!<Variable>^$FF)+$01)
	else
		!<Variable> #= (!ROMOffset+<ByteCounter>)-((!<Variable>^$FFFF)+$01)
	endif
else
	!<Variable> #= (!ROMOffset+<ByteCounter>)+!<Variable>
endif
	%GetBranchLabelLocation(!<Variable>)
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

macro GetBranchLabelLocation(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro HandleJump(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro Op0()
if !Pass == 1
	print "	%SPO_CMAIScriptOp00_UnknownOpcode()"
endif
endmacro

macro Op2()
	%readbyte(Input1)
	%readbyte(Input2)
	%HandleBranch($80, !ByteCounter-$03, Input2)
if !Pass == 1
	print "	%SPO_CMAIScriptOp02_UnknownOpcode($",hex(!Input1, 2),", DATA_",hex(!Input2, 6),")"
endif
endmacro

macro Op4()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp04_BranchAlways(DATA_",hex(!Input1, 6),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op6()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp06_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op8()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_CMAIScriptOp08_UnknownOpcode($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op10()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp0A_UnknownOpcode(DATA_",hex(!Input1, 6),")"
endif
endmacro

macro Op12()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp0C_UnknownOpcode(DATA_",hex(!Input1, 6),")"
endif
endmacro

macro Op14()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp0E_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op16()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_CMAIScriptOp10_UnknownOpcode($",hex(!Input1, 2),", $00",hex(!Input2, 4),")"
endif
endmacro

macro Op18()
if !Pass == 1
	print "	%SPO_CMAIScriptOp12_UnknownOpcode()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op20()
	%Op53()
endmacro

macro Op22()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp16_UnknownOpcode(DATA_",hex(!Input1, 6),")"
endif
endmacro

macro Op24()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
	%readbyte(Input6)
	%readbyte(Input7)
	%readbyte(Input8)
if !Pass == 1
	print "	%SPO_CMAIScriptOp18_UnknownOpcode($",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),", $",hex(!Input6, 2),", $",hex(!Input7, 2),", $",hex(!Input8, 2),")"
endif
endmacro

macro Op26()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp1A_UnknownOpcode(DATA_",hex(!Input1, 6),")"
endif
endmacro

macro Op28()
if !Pass == 1
	print "	%SPO_CMAIScriptOp1C_UnknownOpcode()"
endif
endmacro

macro Op30()
	%Op53()
endmacro

macro Op32()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp20_UnknownOpcode(DATA_",hex(!Input1, 6),")"
endif
endmacro

macro Op34()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp22_UnknownOpcode(DATA_",hex(!Input1, 6),")"
endif
endmacro

macro Op36()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
if !Pass == 1
	print "	%SPO_CMAIScriptOp24_UnknownOpcode($000A",hex(!Input1, 2),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),")"
endif
endmacro

macro Op38()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp26_UnknownOpcode(DATA_",hex(!Input1, 6),")"
endif
endmacro

macro Op40()
	%Op53()
endmacro

macro Op42()
	%readbyte(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
	%readbyte(Input6)
	%readbyte(Input7)
	%readbyte(Input8)
	%HandleBranch($80, !ByteCounter-$09, Input1)
	%HandleBranch($80, !ByteCounter-$09, Input2)
	%HandleBranch($80, !ByteCounter-$09, Input3)
	%HandleBranch($80, !ByteCounter-$09, Input4)
	%HandleBranch($80, !ByteCounter-$09, Input5)
	%HandleBranch($80, !ByteCounter-$09, Input6)
	%HandleBranch($80, !ByteCounter-$09, Input7)
	%HandleBranch($80, !ByteCounter-$09, Input8)
if !Pass == 1
	print "	%SPO_CMAIScriptOp2A_UnknownOpcode(DATA_",hex(!Input1, 6),", DATA_",hex(!Input2, 6),", DATA_",hex(!Input3, 6),", DATA_",hex(!Input4, 6),", DATA_",hex(!Input5, 6),", DATA_",hex(!Input6, 6),", DATA_",hex(!Input7, 6),", DATA_",hex(!Input8, 6),")"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op44()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%SPO_CMAIScriptOp2C_UnknownOpcode($",hex(!Input1, 2),", DATA_!Bank",hex(!Input2, 4),")"
endif
endmacro

macro Op46()
if !Pass == 1
	print "	%SPO_CMAIScriptOp2E_UnknownOpcode()"
endif
endmacro

macro Op48()
	%readbyte(Input1)
	%HandleBranch($80, !ByteCounter-$02, Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp30_UnknownOpcode(DATA_",hex(!Input1, 6),")"
endif
endmacro

macro Op50()
	%readword(Input1)
	%readbyte(Input2)
	%readword(Input3)
	!Input4 #= !Input3+(!ROMOffset&$FF0000)
	%HandleJump(!Input4)
if !Pass == 1
	print "	%SPO_CMAIScriptOp32_UnknownOpcode($00",hex(!Input1, 4),", $",hex(!Input2, 2),", DATA_!Bank",hex(!Input3, 4),")"
endif
endmacro

macro Op52()
	%readbyte(Input1)
if !Pass == 1
	print "	%SPO_CMAIScriptOp34_UnknownOpcode($",hex(!Input1, 2),")"
endif
endmacro

macro Op53()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 2)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1&$01 == $01
			%Op53()
		elseif !Input1 > 52
			%Op53()
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
		%Op53()
	elseif !Input1 > 54
		%Op53()
	else
		%Op!Input1()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
