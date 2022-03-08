@echo off

::forfiles /?

if exist temp (
cd temp
call :check "forfiles /P . /M * /C" "cmd /c if @isdir equ TRUE echo @path,@fname"
) else echo There's nothing to display.
pause
exit /b 0


:check

for /f "tokens=1* delims=," %%i in ('%~1 "%~2"') do (
echo.%%j
forfiles /P %%i /M * /C "cmd /c type @file"
echo.
)

exit /b 0