@echo off
REM
REM Author: Faris Almutairi
REM Email: fars.mezan@gmail.com
REM
REM Prerequisites: curl.exe
REM

title RFC Description
:up
echo Enter the number of the RFC document you want, to get its Description.
set /p x=Number: 
set y=ftp://ftp.funet.fi/rfc/rfc%x%.json
echo.
curl %y%
pause > nul
cls
goto :up