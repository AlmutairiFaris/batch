@echo off
set "string=%~1"
set /a length=0
:check
if "%string%" equ "" set "string=%~1" & exit /b 0
set string=%string:~0,-1%
set /a length=%length%+1
goto check
::%string% %length%