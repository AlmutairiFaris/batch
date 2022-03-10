@echo off

::Introduction for user
echo This tool takes text as input, and returns an image as output.
echo.

:: Take input from user %text%
:: Example: dog
set /p "text=Enter Text: "

call api-key.bat
set "URL=https://api.deepai.org/api/text2img"

:: Set name of output directory
set "outputDir=text2image/%text%"

:: input(text) -----> output(temp.txt)
curl -X POST "%URL%" -F "text=%text%" -H "Api-Key: %apiKey%" > temp.txt

:: input(temp.txt, %outputDir%) -----> output(JPG Image)
call download-image.bat

echo.
pause