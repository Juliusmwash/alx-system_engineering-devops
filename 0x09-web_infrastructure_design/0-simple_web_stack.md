<h1>Simple web stack</h1>
<img src="0-simple_web_stack.PNG" alt="Test 0">
Consider this <a href="web-infrastructure.md">link</a> if you want to gain a deeper understanding of the web infrastructure. I have vividly explained it.
<h4>What is the server using to communicate with the computer of the user requesting the website?</h4>
<p>When a server communicates with the computer of a user requesting a website, it uses the <b>Internet Protocol (IP) and the Hypertext Transfer Protocol (HTTP)</b>.</p>
<p>Here is a brief explanation of how communication process typically works</p>
<p>User Initiates Request: The user's computer (client) initiates a request by entering a URL or clicking on a link to a website in their web browser.</p>
<p>The client's web browser first contacts a DNS resolver (usually provided by the Internet Service Provider) to resolve the domain name (e.g., www.foobar.com) into an IP address. The DNS resolver looks up the IP address associated with the domain name.</p>
<p>Once the client has the IP address of the server, it establishes a TCP/IP connection with the server. TCP (Transmission Control Protocol) ensures reliable data transmission by breaking data into packets and verifying their successful delivery.</p>
<p>The client sends an HTTP request to the server, specifying the URL and the type of request (e.g., GET, POST). This request includes information such as headers, cookies, and any data required by the server to process the request.</p>
<p>The server receives the HTTP request and processes it accordingly. This involves interpreting the URL, reading any data sent in the request, and determining the appropriate action to take.</p>
<p>If the requested URL corresponds to a static file (e.g., HTML, CSS, JavaScript), the server retrieves the file from its file system and sends it back to the client in the HTTP response. If the request requires dynamic content generation, the server interacts with the application server or executes server-side code to generate the appropriate response.</p>
<p>The server constructs an HTTP response, which includes the requested content or the result of processing the request. The response contains information such as headers, cookies, and the content itself.</p>
<p>The server sends the HTTP response back to the client over the established TCP/IP connection. The response is transmitted in packets that traverse the internet infrastructure, including routers and switches, until they reach the client's computer.</p>
<p>The client's web browser receives the HTTP response and processes it to render the web content. This involves interpreting the HTML, executing any embedded scripts (e.g., JavaScript), applying CSS styles, and rendering the final web page.</p>
<p>Once the data transmission is complete, the server closes the TCP/IP connection, indicating the end of the communication between the server and the client.</p>
<p>In summary, the server uses the Internet Protocol (IP) and the Hypertext Transfer Protocol (HTTP) to communicate with the computer of the user requesting the website. The server responds to HTTP requests by sending back HTTP responses containing the requested web content or the result of processing the request.</p>
<h3>What type of DNS record www is in www.foobar.com?</h3>
<p>The "www" in "www.foobar.com" is typically a subdomain and can be associated with various DNS record types depending on how it is configured. The most common DNS record associated with the "www" subdomain is the CNAME (Canonical Name) record.</p>
<p>A CNAME record is used to create an alias or redirect one domain or subdomain to another. In the case of "www.foobar.com," the CNAME record for the "www" subdomain might point to the root domain "foobar.com" or another domain altogether.</p>
<h3>What is the role of the domain name?</h3>
<p>The domain name plays a crucial role in identifying and locating resources on the internet. Its main functions include:</p>
<p>(1) A domain name provides a human-readable and memorable way to identify and access resources on the internet. It serves as a unique label that represents a specific website, email server, or other online services.</p>
<p>(2) A domain name serves as the address for a website. It enables users to access webpages by simply typing the domain name in a web browser, such as "www.example.com". It helps users navigate the vast web by providing a consistent and recognizable naming system.</p>
<p>(3) A domain name can contribute to the branding and identity of individuals, businesses, organizations, or any online entity. It allows them to establish a distinct online presence and build recognition among their audience.</p>
<p>(4) A domain name is commonly used to create professional and personalized email addresses, such as "name@example.com". It enables businesses and individuals to have custom email accounts associated with their domain, enhancing their professionalism and credibility.</p>
<p>(5) Domain names are an integral part of the Domain Name System (DNS), which translates human-readable domain names into IP addresses. When you enter a domain name in a web browser or send an email, the DNS system translates the domain name into an IP address to locate the corresponding server where the requested resource is hosted.</p>
<p>(6) Registering a domain name provides ownership and control over that specific online address. Domain owners can manage DNS settings, control website content, create email accounts, and determine how the domain is utilized.</p>
<p><b>Overall</b>, the domain name serves as a fundamental component of the internet infrastructure, enabling users to access websites, resources, and services in a user-friendly manner while providing an identity and branding opportunity for online entities.</p>
<h3>SPOF</h3>
<p>SPOF stands for Single Point of Failure. In the context of a web infrastructure sharing one server, SPOF refers to a component or element that, if it fails, can cause a complete disruption of the entire system or service.</p>
<p>When multiple websites or services are hosted on a single server, there are potential risks associated with having a SPOF. If the server encounters a critical failure, such as hardware malfunction or software crash, all the websites and services relying on that server will become inaccessible.</p>
<p>Having a SPOF can lead to significant downtime, loss of revenue, and negative impact on user experience. Therefore, it's generally recommended to design web infrastructures with redundancy and failover mechanisms to mitigate the risk of SPOFs.</p>
<p><b>Some common strategies to address SPOFs in a web infrastructure include</b>:</p>
<p>(1) <b>Load Balancing</b>: Distributing incoming traffic across multiple servers to ensure a more balanced workload. This helps prevent one server from becoming overwhelmed and reduces the risk of a single server failure affecting all services.
<p>(2) <b>Server Clustering</b>: Creating a cluster of servers that work together and share the workload. If one server fails, the other servers in the cluster can take over the workload to maintain service availability.</p>
<p>(3) <b>Redundant Hardware</b>: Using redundant components, such as redundant power supplies, network connections, and storage systems, to minimize the impact of a hardware failure.</p>
<p>(4) <b>Backup and Disaster Recovery</b>: Implementing regular data backups and disaster recovery plans to quickly recover from failures and minimize downtime.</p>
<p>By implementing these strategies, organizations can minimize the risk of a single server failure causing widespread disruptions, enhance the availability of their web services, and improve overall reliability.</p>
<h3>Downtime when maintenance needed</h3>
<p>Performing maintenance tasks that require restarting the web server can result in downtime. During the maintenance period, the website or service hosted on that server will be inaccessible to users.</p>
<p>The duration of the downtime depends on various factors, including the time required to deploy the new code, restart the web server, and ensure that everything is functioning correctly after the restart. It can typically range from a few seconds to several minutes, depending on the complexity of the application and the specific maintenance tasks being performed.</p>
<h3>Not scallable</h3>
<p>A single-server infrastructure has limitations when it comes to handling high incoming traffic. Scaling is a key consideration when the volume of incoming traffic exceeds the capabilities of a single server.</p>
<p>In a single-server infrastructure, you may encounter issues such as slow response times, website crashes, or even complete unavailability when there is an overwhelming amount of traffic. Scaling allows you to address these challenges by distributing the load across multiple servers or resources.</p>
