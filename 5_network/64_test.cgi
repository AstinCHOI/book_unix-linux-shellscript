#!/bin/sh

# Use: echo, uptime

# Print CGI Header
echo "Content-Type: text/plain"
echo

# print to browser
echo "Test CGI: uptime"
uptime

# Red Hat Enterprise, 7.x-9, Fedora core, CentOS
# => /var/www/cgi-bin/
# Red Hat 6.x and older	
# => /home/httpd/cgi-bin/
# SuSe	
# => /srv/www/cgi-bin/
# Ubuntu/Debian	
# => /usr/lib/cgi-bin/