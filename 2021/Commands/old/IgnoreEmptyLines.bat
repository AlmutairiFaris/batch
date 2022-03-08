@echo off
FOR /F "eol= tokens=* delims=" %%i in (%~1) do (
echo."%%i" >> temp.txt
)
copy temp.txt %~1 > nul
del temp.txt