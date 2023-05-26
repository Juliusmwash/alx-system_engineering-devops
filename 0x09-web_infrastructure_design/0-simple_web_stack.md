<h1>SIMPLE WEB STACK</h1>


![SIMPLE WEB STACK](./0-simple_web_stack.jpg)


<h3>Client requesting for a website<br>DNS Server</h3>

<p>When a web browser receives a URL, from the user, it first checks its <b>local DNS cache</b> to see if it has recently resolved the corresponding <b>IP address</b>(in our case 'www.foobar.com'). This cache stores previously resolved domain-to-IP mappings to improve performance and reduce the need for repeated lookups.</p>
<p>If the IP address is not found in the local DNS cache, the browser contacts a <b>DNS resolver</b> (typically provided by the Internet Service Provider or a public resolver). The resolver acts as a middleman in the DNS lookup process. The resolver doesn't have the answer but knows how to find it.</p>
<p>The resolver starts a recursive DNS lookup process. It begins by contacting the <b>root DNS servers</b>. These servers are the starting point for resolving any domain name. There are a few root DNS servers distributed worldwide, identified by letters from A to M.</p>
<p>The root DNS servers respond to the resolver's query by providing the IP address of the <b>top-level domain (TLD) DNS server</b> responsible for the specific domain extension in the URL. For example, if the domain is "foobar.com," the TLD DNS server for the ".com" domain will be provided.</p>
<p>The resolver now contacts the TLD DNS server and requests the IP address of the <b>authoritative DNS server</b> responsible for the specific domain name ("foobar.com"). The authoritative DNS server is the one that has the final information about the domain's IP address.</p>
<p>The <b>authoritative DNS server</b> responds to the <b>resolver</b> with the IP address associated with the requested domain. It provides the resolver with the necessary mapping of the domain name to the IP address.</p>
<p>The resolver <b>caches</b> the IP address obtained from the authoritative DNS server for a certain period of time (<b>TTL - Time to Live</b>). This caching reduces the need for future DNS lookups for the same domain, improving efficiency. The resolver then provides the IP address to the browser.</p>
<p>Armed with the IP address, the browser can now establish a connection with the web server hosting the requested website. It uses the IP address to initiate a <b>TCP/IP</b> connection, typically over port 80 for HTTP or port 443 for HTTPS.</p>
<p><b>In conclusion</b>, the DNS lookup process involves iterative queries starting from the root DNS servers, going through the TLD DNS server, and finally reaching the authoritative DNS server responsible for the specific domain. The IP address obtained through this process allows the browser to establish a connection with the appropriate web server and retrieve the requested web content.</p>
<h3>Web server</h3>
<p>

