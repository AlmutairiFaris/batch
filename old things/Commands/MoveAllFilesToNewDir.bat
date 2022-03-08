@echo off
set /p "name=NAME OF NEW DIRECTORY: "
::echo %name%

::Create "%name%" Folder if it doesn't exist. if else exit.
if not exist "%name%" (md "%name%"
)else if exist "%name%" (echo This diretory already exist. & pause & exit /b 0)

::pause

::List all file in current directory, and save list in a Temp variable.
forfiles /M * /C "cmd /c echo @file" > NewSortedFiles.temp

::Traverse the list, and move file if it's not excluded.
FOR /F "eol= tokens=* delims=" %%i in (NewSortedFiles.temp) do (
call :check %%i "%name%"
)

::Delete temp variables.
del NewSortedFiles.temp

::pause

exit /b 0

:check

echo "%~1"
echo "%~2"
::Move all files, except those..
if "%~1" equ "NewSortedFiles.temp" (echo DONT MOVE IT!!"
)else if "%~1" equ "MoveAllFiles.bat" (echo DONT MOVE IT!!"
)else if "%~1" equ "desktop.ini" (echo DONT MOVE IT!!"
)else if "%~1" equ "Unsorted" (echo DONT MOVE IT!!"
)else if "%~1" equ "Sorted" (echo DONT MOVE IT!!"
)else if "%~1" equ "%~2" (echo DONT MOVE IT!!"
)else move "%~1" "%~2"

exit /b 0