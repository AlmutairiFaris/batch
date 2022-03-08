@echo off

call api-key.bat

set "URL=https://api.deepai.org/api/neural-style"

set "imageURL1=https://theawesomedaily.com/wp-content/uploads/2017/12/black-and-white-pictures-of-flowers-feat-1.jpg"
set "imageURL2=https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAUMcsi.img?h=449&w=799&m=6&q=60&o=f&l=f&x=718&y=302"

curl -X POST "%URL%" -F "style=%imageURL1%" -F "content=%imageURL2%" -H "Api-Key: %apiKey%"

echo.
pause