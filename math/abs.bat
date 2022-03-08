@echo off
set /a abs = %~1
if %abs% lss 0 set /a abs=%abs%*-1