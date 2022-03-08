@echo off

::echo in filesInTemp.bat

if not exist "temp" md "temp"
call "createFile.bat" "%~1" "%~2" "%~3"


::echo out of filesInTemp.bat


exit /b 0
