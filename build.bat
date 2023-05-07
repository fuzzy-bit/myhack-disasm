@echo off

:: ASSEMBLY + LOGS
.build\asm68k /m /p /o ae- sonic.asm, sfebuilt.bin, , Build.lst>Build.log
type Build.log
if not exist sfebuilt.bin pause & exit

:: POST-ASSEMBLY
.build\fixheadr.exe s1built.bin
@pause
