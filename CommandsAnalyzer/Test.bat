@echo off
FOR /F "eol=  tokens=* delims=" %%i in (documentedExeCommands.txt) do (
echo.-------------------------------------------------------------------------
echo Command: %%i
echo.
%%i /?
echo.-------------------------------------------------------------------------
pause
)
pause