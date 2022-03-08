@echo off

set /p "array=Array Name: "

:top

set "data= "
set /p "data=Add Element: "
:: Data to store , Array name, index , type extention
call "createArray.bat" "%data%" "%array%" "" "txt"

goto top


::pause
exit /b 0