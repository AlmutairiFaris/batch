@echo off

call api-key.bat

set "URL=https://api.deepai.org/api/toonify"

set "imageURL=https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAUMcsi.img?h=449&w=799&m=6&q=60&o=f&l=f&x=718&y=302"

curl -X POST "%URL%" -F "image=%imageURL%" -H "Api-Key: %apiKey%"

echo.
pause