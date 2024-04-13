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

### Load Balancer

### Web Server

### Application Server

### Database