<h1>SIMPLE WEB STACK</h1>


![SIMPLE WEB STACK](./0-simple_web_stack.jpg)


<h3>Client requesting for a website<br>DNS server</h3>

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
<p>The <b>web server</b> operates by receiving incoming requests from clients (typically web browsers) over the HTTP or HTTPS protocol. These requests are initiated when a user accesses a website by entering a URL or clicking on a link. Remember the DNS process?</p>
<p>When a request arrives, the web server establishes a TCP/IP connection with the client. This connection is initiated by the client, and the server responds by accepting the connection.</p>
<p>Once the connection is established, the web server parses the incoming request. It examines the request headers, which contain information such as the requested resource (URL), request method (e.g., GET, POST), cookies, and other relevant details.</p>
<p>Based on the requested resource, the web server retrieves the corresponding file or data from its storage or file system. This could include HTML files, CSS stylesheets, JavaScript files, images, or any other resource required to fulfill the client's request.<p>
<p>The web server generates a response based on the requested resource. For example, if the request is for an HTML file, the server may process any server-side code embedded within the file, dynamically generate the HTML content, and combine it with any relevant data.</p>
<p>The web server sets response headers, including the HTTP status code (e.g., 200 for a successful response, 404 for a not found response), content type, caching directives, and other relevant information. These headers provide instructions to the client on how to handle the response.<p>
<p>Once the response is prepared and the headers are set, the web server sends the response back to the client over the established connection. The response typically includes the requested resource, such as an HTML page or an image file.</p>
<p>After sending the response, the web server closes the connection with the client. For HTTP/1.1, the server usually keeps the connection alive (persistent connection) to handle subsequent requests more efficiently. However, for HTTP/1.0 or in some cases, the connection may be closed after each request-response cycle.</p>
<p>Throughout the process, the web server logs relevant information about the request, response, and any errors or exceptions that may occur. These logs can be used for debugging, analysis, and monitoring purposes.</p>
<p>Once the connection is closed, the web server returns to its listening state, waiting for incoming requests from other clients. It continues this cycle of receiving, processing, and responding to requests as long as it's running.</p>
<p><b>Overall</b>, the web server acts as a mediator between clients and the requested resources. It handles incoming requests, retrieves the necessary data, generates a response, and sends it back to the client. The web server's role is to efficiently process these requests, manage connections, and deliver the requested web content to clients.</p>
