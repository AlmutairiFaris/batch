@echo off

::Introduction for user
echo This took takes image URL of human face as input, and returns a cartoonified image as output.

:: Take input from user %imageURL%
:: Example: https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAUMcsi.img?h=449&w=799&m=6&q=60&o=f&l=f&x=718&y=302
set /p "imageURL=Enter Image URL: "

call api-key.bat
set "URL=https://api.deepai.org/api/toonify"

:: Set name of output directory
set "outputDir=image2cartoon"

:: in(imageURL) ------> out(temp.txt)
curl -X POST "%URL%" -F "image=%imageURL%" -H "Api-Key: %apiKey%" > temp.txt

:: input(temp.txt, %outputDir%) -----> output(JPG Image)
call download-image.bat

echo.
pause