
@echo off

set array=Invoice

set "name="
::set "size="
set "price="
set "qty="
set "data="
echo.
echo.Adding Item:
set /p "name=Name:  "
::set /p "size=Size:  "
set /p "price=Price: "
set /p "qty=Qty:   "
set "data=%name%,%price%,%qty%"
echo.
echo Added: "%data%"

:: Data to store , Array name, index , type extention
call "createArray.bat" "%data%" "%array%" "" "txt"
pause
exit /b 0