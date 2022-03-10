@echo off

call api-key.bat
set "URL=https://api.deepai.org/api/toonify"

:: Take input from user %imageURL%
:: Example: https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAUMcsi.img?h=449&w=799&m=6&q=60&o=f&l=f&x=718&y=302
set /p "imageURL=Enter Image URL: "
set outputDir=image2cartoon

:: Create folders. This is where the image will be downloaded and saved.
if not exist "%outputDir%" md "%outputDir%"

:: in(imageURL) ------> out(temp.txt)
curl -X POST "%URL%" -F "image=%imageURL%" -H "Api-Key: %apiKey%" > temp.txt

:: input(temp.txt) -----> output(%id%)
FOR /F "tokens=1,2,3* delims=, " %%i in (temp.txt) do (
if  %%i equ "id": set id=%%j
)

:: input(temp.txt) -----> output(%url%)
FOR /F "tokens=1,2,3* delims=, " %%i in (temp.txt) do (
if  %%i equ "output_url": set url=%%j
)

set "err=no"
:: input(temp.txt) -----> output(%err%)
FOR /F "tokens=1,2,3* delims=, " %%i in (temp.txt) do (
if  %%i equ {"err": set "err=yes"
)
del temp.txt

if %err% equ yes goto fail

:: input(%id%, %url%) -----> output(image)
curl -o "%outputDir%/%id%.jpg" %url%
goto success


:fail
echo.
echo Conversion failed. We've encountered an error.
goto end

:success
echo.
echo Conversion suceeded. You can find the image at "%outputDir%/%id:"=%.jpg"
goto end

:end
echo.
pause
