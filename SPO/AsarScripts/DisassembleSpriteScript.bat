@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleSpriteScript.asm SPO.sfc > output1.asm

pause
exit