@echo off
echo. Keep It Tidy Charles, Services:
echo.	01 - One Time File - OTF
echo. 	02 - URL Shortener	
echo. 	03 - Message System
echo. 	04 - Random news link from Google News
echo. 	05 - Random word from urbandictionary.com
echo. 	06 - Random joke from ajokeaday.com
echo. 	07 - Short URL expander
echo. 	08 - Qoute of the day from Eduro
echo. 	09 - List your user-agent and public IP
echo. 	10 - ICANN's WHOIS Lookup
echo. 	11 - Random gif from giphy
echo. 	12 - Redirects to gif - for sharing - 302
echo. 	13 - Get "following" - Limited
echo. 	14 - Get "followers" - Limited
echo. 	15 - Download youtube videos - Download through
echo. 	16 - Retrieve all links from a page
echo. 	17 - Retrieve all images from a webpage
echo. 
echo. -----------------------------------------------------------
echo. 01 - One Time File - OTF
echo. 	/file/u OR /otf
echo. 	visit ki.tc/otf for more info
echo. 	curl -F 'file=@Screenshot_20160729_014.png' http://ki.tc/file/u/
echo. 
echo. 02 - URL Shortener
echo. 	/
echo. 	curl -i -H "Content-Type: application/json" -X POST -d '{"url": "http://google.com"}' http://ki.tc/
echo. 	curl -i -H "Content-Type: application/json" -X GET http://ki.tc/url_shortner/a6cabb3a83d7fee4ecc8b
echo. 	curl -i -H "Content-Type: application/json" -X DELETE http://ki.tc/url_shortner/a6cabb3a83d7fee4ecc8b
echo. 
echo. 03 - Message System
echo. 	/m
echo. 	curl -i -H "Content-Type: application/json" -X POST -d '{"to": "Friend", "msg": "Hello", "from": "A"}' http://ki.tc/m
echo. 	curl -i -H "Content-Type: application/json" -X GET http://ki.tc/m/admin/5e449006732699bd3d7a5
echo. 	curl -i -H "Content-Type: application/json" -X DELETE http://ki.tc/m/admin/5e449006732699bd3d7a5
echo. 
echo. 04 - Random news link from Google News
echo. 	/news
echo. 	curl http://ki.tc/news
echo. 
echo. 05 - Random word from urbandictionary.com
echo. 	/urban
echo. 	curl http://ki.tc/urban
echo. 
echo. 06 - Random joke from ajokeaday.com
echo. 	/jokes
echo. 	curl http://ki.tc/jokes
echo. 
echo. 07 - Short URL expander
echo. 	/short
echo. 	curl http://ki.tc/short?url=http://tinyurl.com/jhkjh78
echo. 
echo. 08 - Qoute of the day from Eduro
echo. 	/qoute
echo. 	curl http://ki.tc/qoute
echo. 
echo. 09 - List your user-agent and public IP
echo. 	/me
echo. 	curl http://ki.tc/me
echo. 
echo. 10 - ICANN's WHOIS Lookup
echo. 	/whois
echo. 	curl http://ki.tc/whois?address=google.com
echo. 
echo. 11 - Random gif from giphy
echo. 	/giphy
echo. 	curl http://ki.tc/giphy?q=cat
echo. 
echo. 12 - Redirects to gif - for sharing - 302
echo. 	/gf
echo. 	curl http://ki.tc/gf?q=cat
echo. 
echo. 13 - Get "following" - Limited
echo. 	/twitter/following
echo. 	curl http://ki.tc/twitter/following?screen_name=m4d_d3v
echo. 
echo. 14 - Get "followers" - Limited
echo. 	/twitter/followers
echo. 	curl http://ki.tc/twitter/followers?screen_name=m4d_d3v
echo. 
echo. 15 - Download youtube videos - Download through
echo. 	/yt
echo. 	curl http://ki.tc/yt?id=XDDgL0WvtEs
echo. 
echo. 16 - Retrieve all links from a page
echo. 	/links
echo. 	curl http://ki.tc/links?url=http://www.callerpy.io
echo. 
echo. 17 - Retrieve all images from a webpage
echo. 	/img
echo. 	curl http://ki.tc/img?url=http://www.callerpy.io
pause