## 0x19. Postmortem 

Postmortem

Upon the launch of ALX's System Engineering & DevOps project 0x19,, there was a disruption on a standalone Ubuntu 14.04 container hosting an Apache web server. Accessing the server via GET requests resulted in 500 Internal Server Errors instead of the anticipated response, which should have been an HTML file outlining a basic Holberton WordPress site. The subsequent steps involved in troubleshooting are detailed below.


    Checked active processes using 'ps aux'. Confirmed that two apache2 processes, root and www-data, were running properly.
    Examined the sites-available folder in /etc/apache2/ and found that the web server was serving content from /var/www/html/.
    Ran strace on the PID of the root Apache process in one terminal while curling the server in another. Unfortunately, strace didn't yield any helpful information.
    Repeated the previous step, this time on the PID of the www-data process. Managed to find an -1 ENOENT (No such file or directory) error related to an attempt to access /var/www/html/wp-includes/class-wp-locale.phpp.
    Searched through files in the /var/www/html/ directory using Vim pattern matching and found the erroneous .phpp file extension in wp-settings.php (Line 137, require_once( ABSPATH . WPINC . '/class-wp-locale.php' );).
    Corrected the typo by removing the trailing p from the line.
    Tested the server with another curl command. Success! Received a 200 response.
    Created a Puppet manifest to automate the fix for this type of error.

In summary, it was just a simple typo. The WordPress app encountered a critical error in wp-settings.php due to an incorrect file name (class-wp-locale.phpp instead of class-wp-locale.php). The fix involved removing the extra 'p' from the file name.

To prevent similar outages in the future:

    Test the application thoroughly before deployment.
    Implement status monitoring tools like UptimeRobot to receive instant alerts about website downtime.

I also wrote a Puppet manifest (0-strace_is_your_friend.pp) to automatically fix identical errors in the future. This manifest replaces any instances of phpp extensions in /var/www/html/wp-settings.php with php.

