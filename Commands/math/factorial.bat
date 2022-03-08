@echo off
set /a temp=%~1
::Unknown
if %temp% lss 1 exit /b 0
set /a fact=1
::No more multiplying
:check
if %temp% equ 1 exit /b 0
set /a fact=%temp%*%fact%
set /a temp=%temp%-1
goto check