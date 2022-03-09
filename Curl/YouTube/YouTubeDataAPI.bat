@echo off

:: https://developers.google.com/youtube/v3/docs/search

call api-key.bat

set /p "query=Type your query: "

set "URL=https://youtube.googleapis.com/youtube/v3"

set "fields=items.id.videoId%%2Citems.snippet.title%%2Citems.snippet.channelTitle"

echo const videos = > videos.js
curl "%URL%/search?part=snippet&fields=%fields%&maxResults=10&key=%apiKey%&q=%query: =+%&regionCode=SA&type=video&order=viewCount" >> videos.js

echo.
pause