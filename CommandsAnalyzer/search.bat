@echo off
:top
cls
echo.---------------------------------------------------------
set /p "search=SEARCH: "
find /i "%search%" CheckDirectories.txt
echo.
echo.---------------------------------------------------------
choice /c mt /n /m "Want to search for more? <M>, Want to Terminate? <T>" /t 3 /d m
if %errorlevel% equ 1 pause & goto top
if %errorlevel% equ 2 exit /b 0

