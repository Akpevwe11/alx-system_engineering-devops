# 0x11. What happens when you type google.com in your browser and press Enter 


## Introduction

As we surf the internet with our various devices, we some time pause to ponder the the complex infrastructure that takes our request to their destination. 

In this article, I'll take you through a journey and the various layers of the web to demitify what happens behind the scene when we type in an address like https://www.google.com and press Enter.


### DNS Request

We begging surfing the internet by typing in a URL in our browser. our browser takes in whatever domain name we typed in and then send it to a DNS server. this step is known as name resolution. ( is a process of converting the human friendly domain name typed into the browser to its equivalent IP address).

This process is facilitated by the Doman Name System (DNS). This DNS service is typically provided by our internet service provider (ISP) or a third-party DNS service like Google DNS. The resolver simply retireves the corresponding IP address associated with www.google.com from a DNS server. 

### TCP/IP

The next stage of the process is our browser establishing a TCP (Transmission Control Protocol) Connection with the resolved IP address. The essence of the TCP connection is to ensure reliable delivery of data by breaking the data into packets, and then reassembling them at the destination.

### FireWall

Before a request arrives at its final destination, it may encounter a firewall. 
 a fire wall is a security mesure designed to filter incoming and outgoing traffic from a server based on predetermined rules. 

 The essence of firewall is to ensure that only legitimate traffic can pass through it. protecting the network from unauthorized access or malicious activity. 

### HTTPS/SSL

as the browser establishes a connection with the server, it has do so securly 
using HTTPS (Hypertext Transfer Protocol Sercure). HTTPS, is a secure communication protocol that encrypts data exchange  between the client and server. This encryption is made possible through the use of SSL (Secure Sockets Layer) or its successor, TLS(Transport Layer Security), inorder to ensure confidentiality and integrity of communication with the server. 

### Load Balancer

Upon reaching the server's network, our request mayy encounter a load balancer-- a load balancer is a device that distributes incoming traffic accross multiple servers inorder to optimize resource usage and maximize throughput, and ensure high availability. 

Load balancers enhances the scalability and reliability of web applications by envenly distributing the workload among servers.



### Web Server

Once our request successfully traverses the load balancer, it arrives at a web server—a specialized software application responsible for serving web content in response to client requests. The web server processes our request, retrieves the requested resources (such as HTML, CSS, and JavaScript files), and sends them back to our browser for rendering.

### Application Server

In scenarios where dynamic content is involved, our request may be forwarded to an application server—a server-side software framework or environment capable of executing application logic, querying databases, and generating dynamic content on-the-fly. The application server interacts with databases, external services, and other resources to fulfill our request and generate a personalized response.

### Database

Behind the scenes, our application server may interact with a database—a structured collection of data organized for efficient retrieval and storage. Whether it's storing user information, product catalogs, or session data, databases play a crucial role in powering dynamic web applications by providing persistent storage and enabling data-driven functionalities.

In conclusion, the journey of a web request—from the moment we type a URL into our browser to the moment we receive a response—is a symphony of interconnected technologies and protocols working seamlessly to deliver the desired web experience. By understanding the intricacies of this journey, we gain insight into the fundamental workings of the web stack and the role each component plays in shaping our online interactions.