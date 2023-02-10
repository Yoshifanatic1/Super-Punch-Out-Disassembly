@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleAIScript.asm SPO.sfc > output1.asm

pause
exit