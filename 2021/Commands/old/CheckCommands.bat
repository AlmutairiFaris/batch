@echo off

echo.>documentedExeCommands2.txt
FOR /F "tokens=1,2 delims=." %%i in (sorted1\exe.txt) do call :check1 %%i

pause
exit /b 0

:check1

echo Command: %~1
echo.
call LineContains.bat %~1 "cttunesvr coredpussvr vdsldr gamebarpresencewriter evteng wmiprvse wpdshextautoplay wksprt userinit userinit upnpcont tstheme tieringengineservice sgrmlpac sessionmsg sdchange sdchange rdpsa rdpclip printfilterpipelinesvc mpnotify immersivetpmvscmgrsvr gamebarpresencewriter edpnotify devicecredentialdeployment certenrollctrl bootim wow64 agent prxy proxy worker broker handler server srv host"
::echo Contains: "%linecontains%"
if "%~1" neq "cmd" (
if "%linecontains%" equ "0" (
call :check2 %~1
) else (echo This command won't be executed. It would run in background, freeze the CMD, and wouldn't terminate.)
) else (echo This command won't be executed. It would run a new enviroment of CMD.)
echo.
::pause
echo.
exit /b 0


:check2

%~1 /? > what.txt
set tempError=%errorlevel%
call IsEmpty.bat what.txt
::echo File: what.txt, Size: %filesize%, Empty: %empty%
if "%empty%" equ "False" (echo Error: %tempError%, Command: "%~1", is documented!! Document Size: %filesize%.) else (echo Error: %tempError%, Command "%~1", isn't documented!! )
if "%empty%" equ "False" echo %~1.exe >> documentedExeCommands2.txt
exit /b 0