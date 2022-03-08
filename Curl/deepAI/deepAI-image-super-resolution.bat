@echo off

call api-key.bat

set "URL=https://api.deepai.org/api/torch-srgan"

set "imageURL=https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAUMR8d.img?h=735&w=799&m=6&q=60&o=f&l=f&x=518&y=358"

curl -X POST "%URL%" -F "image=%imageURL%" -H "Api-Key: %apiKey%"

echo.
pause