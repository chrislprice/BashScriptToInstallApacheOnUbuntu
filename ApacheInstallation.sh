#!/bin/bash
# update OS with latest packages
sudo apt-get update 

# Apache installation and verify status
sudo apt-get install apache2 -y
sudo systemctl status apache2

# Enabling firewall and HTTP
sudo ufw allow 'Apache'


# Change ownership on the /var/www directory
sudo chown -R $USER:$USER /var/www

# Creates the HTML Page
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Welcome to my webpage</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Welcome to my website. Have a great day!</h1>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
