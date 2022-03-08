@echo off

::echo in creatFile.bat

set /a count=0
call :adjust %count%

set "name=%~2%adjust%.%~3"
:top
if exist "%name%" (
call :adjust %count%
set "name=%~2%adjust%.%~3"
set /a count=%count%+1
goto top

) else (
echo."%~1">"%name%"
)

::echo out of creatFile.bat


exit /b 0


:adjust

set /a adjust=%~1
if %adjust% lss 10 (set adjust=00000%adjust%
)else if %adjust% lss 100 (set adjust=0000%adjust%
)else if %adjust% lss 1000 (set adjust=000%adjust%
)else if %adjust% lss 10000 (set adjust=00%adjust%
)else if %adjust% lss 100000 (set adjust=0%adjust%
)else if %adjust% lss 1000000 (set adjust=%adjust%)


exit /b 0