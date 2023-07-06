#!/usr/bin/env bash

# Install Nginx if not already installed
if ! command -v nginx >/dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y nginx
fi

# Create necessary folders
sudo mkdir -p /data/web_static/releases/test/
sudo mkdir -p /data/web_static/shared/

# Create a fake HTML file
sudo echo "<html>
  <head>
  </head>
  <body>
    Fake HTML file for testing.
  </body>
</html>" | sudo tee /data/web_static/releases/test/index.html > /dev/null

# Create symbolic link
sudo rm -rf /data/web_static/current
sudo ln -sf /data/web_static/releases/test/ /data/web_static/current

# Set ownership of /data/ folder recursively
sudo chown -R ubuntu:ubuntu /data/

# Update Nginx configuration
#sudo sed -i '/server_name/a \\n\tlocation /hbnb_static/ {\n\t\talias /data/web_static/current/;\n\t}\n' /etc/nginx/sites-available/default

if ! cat /etc/nginx/sites-available/default | grep -q "location /hbnb_static/ {"; then
    awk '{print} /}/ && ++count == 3 {system("echo \"\\n    location /hbnb_static/ {\\n        alias /data/web_static/current/;\\n    }\"")}' /etc/nginx/sites-available/default > mwass.txt && cat mwass.txt > /etc/nginx/sites-available/default
    rm mwass.txt
fi

# Restart Nginx
sudo service nginx restart

exit 0

