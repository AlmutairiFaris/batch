@echo off

::Introduction for user
echo This tool takes two image URLs as input, and returns one image as output.
echo.

:: Take input from user %imageURL1%, %imageURL2%
:: Example: https://theawesomedaily.com/wp-content/uploads/2017/12/black-and-white-pictures-of-flowers-feat-1.jpg
:: Example: https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAUMcsi.img?h=449&w=799&m=6&q=60&o=f&l=f&x=718&y=302

set /p "imageURL1=Enter Image URL (style): "
set /p "imageURL2=Enter Image URL (content): "

call api-key.bat
set "URL=https://api.deepai.org/api/neural-style"

:: Set name of output directory
set "outputDir=neural-style"

:: input(%imageURL1%, %imageURL2%) -----> output(temp.txt)
curl -X POST "%URL%" -F "style=%imageURL1%" -F "content=%imageURL2%" -H "Api-Key: %apiKey%" > temp.txt

:: input(temp.txt, %outputDir%) -----> output(JPG Image)
call download-image.bat

echo.
pause