@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleCornermanScript.asm SPO.sfc > output1.asm

pause
exit