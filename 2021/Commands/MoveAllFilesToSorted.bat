@echo off
::Create Sorted Folder if it doesn't exist
if not exist Sorted md Sorted

::List all file in current directory, and save list in a Temp variable.
forfiles /M * /C "cmd /c echo @file" > SortedFiles.temp

::Traverse the list, and move file if it's not excluded.
FOR /F "eol= tokens=* delims=" %%i in (SortedFiles.temp) do (
call :check %%i
)

::Delete temp variables.
del SortedFiles.temp

::pause

exit /b 0

:check

echo "%~1"
::Move all files, except those..
if "%~1" equ "SortedFiles.temp" (echo DONT MOVE IT!!"
)else if "%~1" equ "MoveAllFiles.bat" (echo DONT MOVE IT!!"
)else if "%~1" equ "desktop.ini" (echo DONT MOVE IT!!"
)else if "%~1" equ "Unsorted" (echo DONT MOVE IT!!"
)else if "%~1" equ "Sorted" (echo DONT MOVE IT!!"
)else move "%~1" Sorted

exit /b 0