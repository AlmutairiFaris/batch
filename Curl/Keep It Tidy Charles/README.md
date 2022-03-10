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
    <ul>
      <li>/file/u OR /otf</li>
      <li>visit ki.tc/otf for more info</li>
      <li>curl -F 'file=@Screenshot_20160729_014.png' http://ki.tc/file/u/</li>
    </ul>
  </li>
  <li>URL Shortener
    <ul>
      <li>/</li>
      <li>curl -i -H "Content-Type: application/json" -X POST -d '{"url": "http://google.com"}' http://ki.tc/</li>
      <li>curl -i -H "Content-Type: application/json" -X GET http://ki.tc/url_shortner/a6cabb3a83d7fee4ecc8b</li>
      <li>curl -i -H "Content-Type: application/json" -X DELETE http://ki.tc/url_shortner/a6cabb3a83d7fee4ecc8b</li>
    </ul>
  </li>
  <li>Message System
    <ul>
      <li>/m</li>
      <li>curl -i -H "Content-Type: application/json" -X POST -d '{"to": "Friend", "msg": "Hello", "from": "A"}' http://ki.tc/m</li>
      <li>curl -i -H "Content-Type: application/json" -X GET http://ki.tc/m/admin/5e449006732699bd3d7a5</li>
      <li>curl -i -H "Content-Type: application/json" -X DELETE http://ki.tc/m/admin/5e449006732699bd3d7a5</li>
    </ul>
  </li>
  <li>Random news link from Google News
    <ul>
      <li>/news</li>
      <li>curl http://ki.tc/news</li>
    </ul>
  </li>
  <li>Random word from urbandictionary.com</li>
    <ul>
      <li>/urban</li>
      <li>curl http://ki.tc/urban</li>
    </ul>
  </li>
  <li>Random joke from ajokeaday.com</li>
    <ul>
      <li>/jokes</li>
      <li>curl http://ki.tc/jokes</li>
    </ul>
  </li>
  <li>Short URL expander
    <ul>
      <li>/short</li>
      <li>curl http://ki.tc/short?url=http://tinyurl.com/jhkjh78</li>
    </ul>
  </li>
  <li>Qoute of the day from Eduro
    <ul>
      <li>/qoute</li>
      <li>curl http://ki.tc/qoute</li>
    </ul>
  <li>List your user-agent and public IP
    <ul>
      <li>/me</li>
      <li>curl http://ki.tc/me</li>
    </ul>
  </li>
  <li>ICANN's WHOIS Lookup</li>
    <ul>
      <li>/whois</li>
      <li>curl http://ki.tc/whois?address=google.com</li>
    </ul>
  </li>
  <li>Random gif from giphy
    <ul>
      <li>/giphy</li>
      <li>curl http://ki.tc/giphy?q=cat</li>
    </ul>
  </li>
  <li>Redirects to gif - for sharing - 302
    <ul>
      <li>/gf</li>
      <li>curl http://ki.tc/gf?q=cat</li>
    </ul>
  </li>
  <li>Get "following" - Limited
    <ul>
      <li>/twitter/following</li>
      <li>curl http://ki.tc/twitter/following?screen_name=m4d_d3v</li>
    </ul>
  </li>
  <li>Get "followers" - Limited
    <ul>
      <li>/twitter/followers</li>
      <li>curl http://ki.tc/twitter/followers?screen_name=m4d_d3v</li>
    </ul>
  </li>
  <li>Download youtube videos - Download through
    <ul>
      <li>/yt</li>
      <li>curl http://ki.tc/yt?id=XDDgL0WvtEs</li>
    </ul>
  </li>
  <li>Retrieve all links from a page
    <ul>
      <li>/links</li>
      <li>curl http://ki.tc/links?url=http://www.callerpy.io</li>
    </ul>
  </li>
  <li>Retrieve all images from a webpage
    <ul>
      <li>/img</li>
      <li>curl http://ki.tc/img?url=http://www.callerpy.io</li>
    </ul>
  </li>
</ol>
