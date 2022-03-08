@echo off
::%~1: line
::%~2: strings to find in the line
::If any string was found in the line, return 1. If no string was found, return 0.

echo %~1 > line.temp
findstr /n /i "%~2" line.temp > count.temp

set /a linecontains=0
FOR /F "eol= tokens=1,2 delims=:" %%i in (count.temp) do (
set /a linecontains=%%i
)
del line.temp
del count.temp