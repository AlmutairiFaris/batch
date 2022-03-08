@echo off
set "number="
set "number=%~1"
set "number=%number% "
::echo It's not a number
if "%number%" equ " " set "isNumber=-1" & goto end
if "%number%" equ "? " set "isNumber=-1" & goto help
::REMOVE SIGNS (+,-) IF THEY WERE THE 1ST CHAR
if "%number:~0,1%" equ "-" set "number=%number:~1%" & goto next
if "%number:~0,1%" equ "+" set "number=%number:~1%" & goto next
:next
::REMOVE DIGITS 0 TO 9
set number=%number:0=%
set number=%number:1=%
set number=%number:2=%
set number=%number:3=%
set number=%number:4=%
set number=%number:5=%
set number=%number:6=%
set number=%number:7=%
set number=%number:8=%
set number=%number:9=%
call ../lang/length.bat %number%
set /a tempLength=%length%
::dot=0 means its a number and a integer
::dot=1 means its a number and a double
::dot>1 means its not a number
::REMOVE DOTS
set number=%number:.=%
call ../lang/length.bat %number%
set /a tempLength=%tempLength%-%length%

::echo It's not a number
if %length% neq 0 set "isNumber=-1" & goto end
::echo It's an integer number
if %tempLength% equ 0 set "isNumber=1" & goto end
::echo It's a double number
if %tempLength% equ 1 set "isNumber=2" & goto end
::echo It's not an integer nor a double number
set "isNumber=0" & goto end
:help
echo Returns the type of of number, and whether it is a number:
echo.  -1	not a number, it has characters
echo.   0	not a number, but it has digits and dots.
echo.   1	a number, an integer.
echo.   2	a number, a double.
echo.
echo ISNUMBER [string]
echo.
:end