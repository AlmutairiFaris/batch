@echo off

:: https://developers.google.com/custom-search/v1/reference/rest/v1/cse/list?hl=en
::

cd variables

call api-key.bat
call search-engine-id.bat

set /p "query=query: "


set "URL=https://customsearch.googleapis.com/customsearch/v1?"

echo results= > result.js
curl "%URL%cx=%SEID%&key=%apiKey%&q=%query: =+%" >> result.js

echo.
pause