@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleAnimationScript.asm SPO.sfc > output1.asm

pause
exit