# Install apache on Linux server
#!/bin/bash
yum install httpd -y
systemctl start httpd
systemctl enable httpd
cd /var/www/html/
touch index.html