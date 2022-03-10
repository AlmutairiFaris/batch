@echo off

::%apiKey%

call ../api-key.bat

set /p "query=Type your query: "

set "URL=https://kgsearch.googleapis.com/v1/entities:search?"

echo const output= > output.js
curl "%URL%query=%query: =+%&key=%apiKey%&limit=100&indent=True" >> output.js

echo.
pause