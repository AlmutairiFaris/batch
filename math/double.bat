@echo off
::double <number><precision> 215.3039 2
::return: <double><number><precision> 21530 215.30 2
:top
set "double="
set /p "double=num: "
call isnumber.bat %double% > temp.txt
echo %isNumber%
pause
goto top