@echo off
forfiles /P . /M %~1 /C "cmd /c echo @fsize" > filesize.temp

FOR /F "eol=  tokens=* delims=" %%i in (filesize.temp) do (
set /a filesize=%%i
)

del filesize.temp

::File should be in current Directory

::This is how we take output of a command, to a variable.