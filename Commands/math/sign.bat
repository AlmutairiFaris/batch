@echo off
set /a sign = %~1
call abs.bat %sign%
if %sign% equ 0 set /a sign=1 & exit /b 0
set /a sign = %abs%/%sign%