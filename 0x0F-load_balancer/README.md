## 0x0F Load Balancer


## Task 0

 we’re placing our web servers behind a load balancer for this project, we want to add a custom Nginx response header. The goal here is to be able to track which web server is answering our HTTP requests, to understand and track the way a load balancer works.

### Requirements:

[x] Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
    - The name of the custom HTTP header must be X-Served-By
     - The value of the custom HTTP header must be the hostname of the server Nginx is running on
 [x] Write `0-custom_http_response_header` so that it configures a brand new Ubuntu machine to the requirements asked in this task.


 ### Example:

praisex64@ubuntu$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
praisex64@ubuntu$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
praisex64@ubuntu$
