@echo off
echo.> "CheckDirectories.txt"
FOR /F "eol= tokens=* delims= " %%i in (PrintPath.txt) do (
dir /L /A:-d /O:en /b %%i >> "CheckDirectories.txt"
)

if exist sorted1 rd /s /q sorted1
if not exist sorted1 md sorted1

if exist sorted2 rd /s /q sorted2
if not exist sorted2 md sorted2


FOR /F "eol= tokens=1,2,* delims=." %%i in (CheckDirectories.txt) do (
if "%%j" equ "com" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "exe" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "bat" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "cmd" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "vbs" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "vbe" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "js" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "jse" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "wsf" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "wsh" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "msc" (echo %%i.%%j >> sorted1\%%j.txt) else (
if "%%j" equ "bin" (echo %%i.%%j >> sorted2\%%j.txt) else (
if "%%j" equ "txt" (echo %%i.%%j >> sorted2\%%j.txt) else (
if "%%j" equ "mof" (echo %%i.%%j >> sorted2\%%j.txt) else (
if "%%j" equ "dll" (echo %%i.%%j >> sorted2\%%j.txt) else (
if "%%j" equ "nls" (echo %%i.%%j >> sorted2\%%j.txt) else (
if "%%j" equ "cpl" (echo %%i.%%j >> sorted2\%%j.txt) else (
if "%%j" equ "png" (echo %%i.%%j >> sorted2\%%j.txt) else (
echo hello.%%j %%k
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
pause

