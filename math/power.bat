@echo off
set /a number=%~1
set /a power=%~2
if %power% equ 0 set /a power=1 & exit /b 0
::num ^ pow
::num * num * ...
set /a temp=%number%
:check
if %power% equ 1 set /a power=%temp% & exit /b 0
set /a temp=%number%*%temp%
set /a power=%power%-1
goto check
