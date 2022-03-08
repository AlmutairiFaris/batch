@echo off

call api-key.bat

set "URL=https://api.deepai.org/api/text2img"

set "text=Donald Trump"

curl -X POST "%URL%" -F "text=%text%" -H "Api-Key: %apiKey%"

echo.
pause