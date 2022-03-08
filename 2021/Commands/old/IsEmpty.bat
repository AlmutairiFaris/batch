@echo off
call FileSize.bat %~1
if %filesize% equ 0 (set Empty=True) else set Empty=False

::echo File: %~1, Size: %filesize%, Empty: %empty%