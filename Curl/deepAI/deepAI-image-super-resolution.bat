@echo off

::Introduction for user
echo This tool takes image URL as input, and returns one image as output.
echo.

:: Take input from user %imageURL%
:: Example: https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAUMR8d.img?h=735&w=799&m=6&q=60&o=f&l=f&x=518&y=358

set /p "imageURL=Enter Image URL: "

call api-key.bat
set "URL=https://api.deepai.org/api/torch-srgan"

:: Set name of output directory
set "outputDir=torch-srgan"

:: input(%imageURL%) -----> output(temp.txt)
curl -X POST "%URL%" -F "image=%imageURL%" -H "Api-Key: %apiKey%" > temp.txt

:: input(temp.txt, %outputDir%) -----> output(JPG Image)
call download-image.bat

echo.
pause