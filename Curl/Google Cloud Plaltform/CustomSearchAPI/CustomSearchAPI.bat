@echo off

:: https://developers.google.com/custom-search/v1/reference/rest/v1/cse/list?hl=en
::

call ../api-key.bat
call search-engine-id.bat

set /p "query=query: "


set "URL=https://customsearch.googleapis.com/customsearch/v1?"

echo const output= > output.js
curl "%URL%cx=%SEID%&key=%apiKey%&q=%query: =+%" >> output.js

echo.
pause