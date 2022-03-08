@echo off

:top
cls
echo Welcome!!
echo This tool makes it easier and faster to create 3D shapes.
echo.
echo Available shapes:
echo 0 - Exit	1 - Cube	2- Edit Cube	3 - Pyramid
echo.
choice /c 0123 /n /m "Choose an action to perform: "

if %errorlevel% equ 1 exit 
if %errorlevel% equ 2 call :createCube 0 0 10
if %errorlevel% equ 3 call :editCube
if %errorlevel% equ 4 call :pyramid

goto top

:pyramid
echo.
echo Please, set the size of pyramid: 
set /p height=Height: 
call pyramid.bat %height% birch_log 0 0 10
pause
exit /b 0

:createCube
echo.
echo Please, set the size of cube: 

set /p size=Height: 
call endPointFormula.bat %size% %~2
set /a y1=%output1%
set /a y2=%output2%

set /p size=Width: 
call endPointFormula.bat %size% %~1
set /a x1=%output1%
set /a x2=%output2%

set /p size=Length: 
call endPointFormula.bat %size% %~3
set /a z1=%output1%
set /a z2=%output2%

echo.
echo fill ~%x1% ~%y1% ~%z1% ~%x2% ~%y2% ~%z2% minecraft:
pause 

exit /b 0

:editCube
echo.
echo You are editing the cube [%x1%,%y1%,%z1%] [%x2%,%y2%,%z2%].
echo.
echo Please select the height to edit. Range: (%y1%..%y2%)
choice /c 01 /n /m "Pick a Range<0>, or One<1>: "
if %errorlevel% equ 1 set /p "h1=Height starts from: " & set /p "h2=Height ends     at: "
if %errorlevel% equ 2 set /p "h1=Height is at: " & set h2=1000
if %h2% equ 1000 set h2=%h1%
echo.
choice /c 012 /n /m "Floor area? (Same<0>,Incr<1>,Decr<2>): "
if %errorlevel% equ 1 echo fill ~%x1% ~%h1% ~%z1% ~%x2% ~%h2% ~%z2% minecraft:
if %errorlevel% equ 2 call :IncrCubeArea
if %errorlevel% equ 3 call :DecrCubeArea
pause
exit /b 0

:IncrCubeArea
set /p "n=Increase by? "
echo.
set /a nx1=%x1%-%n%
set /a nz1=%z1%-%n%
set /a nx2=%x2%+%n%
set /a nz2=%z2%+%n%
echo fill ~%nx1% ~%h1% ~%nz1% ~%nx2% ~%h2% ~%nz2% minecraft:

exit /b 0

:DecrCubeArea
set /p "n=Decrease by? "
echo.
set /a nx1=%x1%+%n%
set /a nz1=%z1%+%n%
set /a nx2=%x2%-%n%
set /a nz2=%z2%-%n%
echo fill ~%nx1% ~%h1% ~%nz1% ~%nx2% ~%h2% ~%nz2% minecraft:

exit /b 0