@echo off

call api-key.bat
set "URL=https://api.deepai.org/api/text2img"

echo This tool takes text as input, and returns an image as output.
echo.
set /p "text=Enter Text: "

:: input(text) -----> output(temp.txt)
curl -X POST "%URL%" -F "text=%text%" -H "Api-Key: %apiKey%" > temp.txt


:: input(temp.txt) -----> output(%id%)
FOR /F "tokens=1,2,3* delims=, " %%i in (temp.txt) do (
if  %%i equ "id": set id=%%j
)

:: input(temp.txt) -----> output(%url%)
FOR /F "tokens=1,2,3* delims=, " %%i in (temp.txt) do (
if  %%i equ "output_url": set url=%%j
)
del temp.txt

:: input(%id%, %url%) -----> output(image)
set outputDir=text2image

if not exist "%outputDir%" md "%outputDir%"
if not exist "%outputDir%/%text%" md "%outputDir%/%text%"


curl -o "%outputDir%/%text%/%id%.jpg" %url%


echo.
pause
