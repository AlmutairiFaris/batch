@echo off

::echo in creatAraay.bat

if not exist "temp\%~2" md "temp\%~2"
:: content of var , array name, index , type extention
::echo data: "%~1"
call "createFilesInTemp.bat" "%~1" "temp\%~2\%~3" "%~4"


::echo out of creatAraay.bat

:: content of var , index , type extention
::call createFilesInTemp.bat "" new bat

exit /b 0