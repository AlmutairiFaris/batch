@echo off

::Use dir /a:h to make sure the directory you're in doesn't have
::hidden files which aren't excluded. Otherwise, they will move.

echo You can move all files to one of the following directories:
echo. 1- Sorted		2 - Unsorted		3 - New

CHOICE /C 123 /N /M "Choose: "
if %errorlevel% equ 1 lib\MoveAllFilesToSorted
if %errorlevel% equ 2 lib\MoveAllFilesToUnsorted
if %errorlevel% equ 3 lib\MoveAllFilesToNewDir