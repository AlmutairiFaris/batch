@echo off
FOR /F "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26 delims=;" %%a in (%~1) do (
echo.%%a
echo.%%b
echo.%%c
echo.%%d
echo.%%e
echo.%%f
echo.%%g
echo.%%h
echo.%%i
echo.%%j
echo.%%k
echo.%%l
echo.%%m
echo.%%n
echo.%%o
echo.%%p
echo.%%q
echo.%%r
echo.%%s
echo.%%t
echo.%%u
echo.%%v
echo.%%w
echo.%%x
echo.%%y
echo.%%z
) > %~1
call IgnoreEmptyLines.bat %~1