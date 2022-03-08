@echo off
REM
REM Author: Faris Almutairi
REM Email: fars.mezan@gmail.com
REM
REM Prerequisites: curl.exe
REM
title RFC Content
:up
echo Enter the number of the RFC document you want, to get the content.
set /p x=Number: 
set y=ftp://ftp.funet.fi/rfc/rfc%x%.txt
echo.
curl %y%
pause > nul
cls
goto :up
