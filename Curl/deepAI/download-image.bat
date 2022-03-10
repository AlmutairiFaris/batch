@echo off
::------------------------------------------------------------
:: input(temp.txt, %outputDir%) -----> output(JPG Image)
::------------------------------------------------------------
:: input(temp.txt) ---> output(%id%, %url%, %err%)
:: Then, delete temp.txt
:: err=yes ---> exist
:: input(%err%=no, %outputDir%, %id%) -----> output(%id%.jpg)
::------------------------------------------------------------

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

:: input(%err%) ---> exist, or download image
if %err% equ yes goto fail

:: Create folders. This is where the image will be downloaded and saved.
if not exist "%outputDir%" md "%outputDir%"

:: input(%id%, %url%) -----> output(image)
curl -o "%outputDir%/%id%.jpg" %url%
goto success


:fail
echo.
echo Process failed. We've encountered an error.
goto end

:success
echo.
echo Process suceeded. You can find the image at "%outputDir%/%id:"=%.jpg"
goto end

:end