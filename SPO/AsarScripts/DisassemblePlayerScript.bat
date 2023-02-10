@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassemblePlayerScript.asm SPO.sfc > output1.asm

pause
exit