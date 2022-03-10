@echo off

::Introduction for user
echo This tool takes black and white image as input, and returns colorized image as output.
echo.

:: Take input from user %imageURL%
:: Example: https://theawesomedaily.com/wp-content/uploads/2017/12/black-and-white-pictures-of-flowers-feat-1.jpg

set /p "imageURL=Enter Image URL: "

call api-key.bat
set "URL=https://api.deepai.org/api/colorizer"

:: Set name of output directory
set "outputDir=colorizer"

:: input(%imageURL%) -----> output(temp.txt)
curl -X POST "%URL%" -F "image=%imageURL%" -H "Api-Key: %apiKey%" > temp.txt

:: input(temp.txt, %outputDir%) -----> output(JPG Image)
call download-image.bat

echo.
pause