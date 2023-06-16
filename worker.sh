#!/bin/bash
sleep 300
apt-get update -y
apt-get install -y git nginx nodejs npm

# Configure Nginx as reverse proxy
echo 'server {
  listen 80;
  server_name _;
  location / {
    proxy_pass http://localhost:3000;
    proxy_set_header Host \$host;
    proxy_set_header X-Real-IP \$remote_addr;
    proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto \$scheme;
  }
}' > /etc/nginx/sites-available/default

service nginx restart

cd /home/ubuntu
git clone https://github.com/abhishek-pingsafe/Devops-Node
cd Devops-Node
npm install
node app.js
