<h2>Keep It Tidy Charles, Services (Titles):</h2>
<ol>
  <li>One Time File - OTF</li>
  <li>URL Shortener</li>
  <li>Message System</li>
  <li>Random news link from Google News</li>
  <li>Random word from urbandictionary.com</li>
  <li>Random joke from ajokeaday.com</li>
  <li>Short URL expander</li>
  <li>Qoute of the day from Eduro</li>
  <li>List your user-agent and public IP</li>
  <li>ICANN's WHOIS Lookup</li>
  <li>Random gif from giphy</li>
  <li>Redirects to gif - for sharing - 302</li>
  <li>Get "following" - Limited</li>
  <li>Get "followers" - Limited</li>
  <li>Download youtube videos - Download through</li>
  <li>Retrieve all links from a page</li>
  <li>Retrieve all images from a webpage</li>
</ol>

<h2>Keep It Tidy Charles, Services (Details):</h2>
<ol>
  <li>One Time File - OTF
    <ol>
      <li>/file/u OR /otf</li>
      <li>visit ki.tc/otf for more info</li>
      <li>curl -F 'file=@Screenshot_20160729_014.png' http://ki.tc/file/u/</li>
    </ol>
  </li>
  <li>URL Shortener
    <ol>
      <li>/</li>
      <li>curl -i -H "Content-Type: application/json" -X POST -d '{"url": "http://google.com"}' http://ki.tc/</li>
      <li>curl -i -H "Content-Type: application/json" -X GET http://ki.tc/url_shortner/a6cabb3a83d7fee4ecc8b</li>
      <li>curl -i -H "Content-Type: application/json" -X DELETE http://ki.tc/url_shortner/a6cabb3a83d7fee4ecc8b</li>
    </ol>
  </li>
  <li>Message System
    <ol>
      <li>/m</li>
      <li>curl -i -H "Content-Type: application/json" -X POST -d '{"to": "Friend", "msg": "Hello", "from": "A"}' http://ki.tc/m</li>
      <li>curl -i -H "Content-Type: application/json" -X GET http://ki.tc/m/admin/5e449006732699bd3d7a5</li>
      <li>curl -i -H "Content-Type: application/json" -X DELETE http://ki.tc/m/admin/5e449006732699bd3d7a5</li>
    </ol>
  </li>
  <li>Random news link from Google News
    <ol>
      <li>/news</li>
      <li>curl http://ki.tc/news</li>
    </ol>
  </li>
  <li>Random word from urbandictionary.com</li>
    <ol>
      <li>/urban</li>
      <li>curl http://ki.tc/urban</li>
    </ol>
  </li>
  <li>Random joke from ajokeaday.com</li>
    <ol>
      <li>/jokes</li>
      <li>curl http://ki.tc/jokes</li>
    </ol>
  </li>
  <li>Short URL expander
    <ol>
      <li>/short</li>
      <li>curl http://ki.tc/short?url=http://tinyurl.com/jhkjh78</li>
    </ol>
  </li>
  <li>Qoute of the day from Eduro
    <ol>
      <li>/qoute</li>
      <li>curl http://ki.tc/qoute</li>
    </ol>
  <li>List your user-agent and public IP
    <ol>
      <li>/me</li>
      <li>curl http://ki.tc/me</li>
    </ol>
  </li>
  <li>ICANN's WHOIS Lookup</li>
    <ol>
      <li>/whois</li>
      <li>curl http://ki.tc/whois?address=google.com</li>
    </ol>
  </li>
  <li>Random gif from giphy
    <ol>
      <li>/giphy</li>
      <li>curl http://ki.tc/giphy?q=cat</li>
    </ol>
  </li>
  <li>Redirects to gif - for sharing - 302
    <ol>
      <li>/gf</li>
      <li>curl http://ki.tc/gf?q=cat</li>
    </ol>
  </li>
  <li>Get "following" - Limited
    <ol>
      <li>/twitter/following</li>
      <li>curl http://ki.tc/twitter/following?screen_name=m4d_d3v</li>
    </ol>
  </li>
  <li>Get "followers" - Limited
    <ol>
      <li>/twitter/followers</li>
      <li>curl http://ki.tc/twitter/followers?screen_name=m4d_d3v</li>
    </ol>
  </li>
  <li>Download youtube videos - Download through
    <ol>
      <li>/yt</li>
      <li>curl http://ki.tc/yt?id=XDDgL0WvtEs</li>
    </ol>
  </li>
  <li>Retrieve all links from a page
    <ol>
      <li>/links</li>
      <li>curl http://ki.tc/links?url=http://www.callerpy.io</li>
    </ol>
  </li>
  <li>Retrieve all images from a webpage
    <ol>
      <li>/img</li>
      <li>curl http://ki.tc/img?url=http://www.callerpy.io</li>
    </ol>
  </li>
</ol>
