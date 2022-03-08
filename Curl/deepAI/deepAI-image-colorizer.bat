@echo off

call api-key.bat

set "URL=https://api.deepai.org/api/colorizer"

set "imageURL=https://theawesomedaily.com/wp-content/uploads/2017/12/black-and-white-pictures-of-flowers-feat-1.jpg"

curl -X POST "%URL%" -F "image=%imageURL%" -H "Api-Key: %apiKey%"

echo.
pause