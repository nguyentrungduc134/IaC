#!/bin/bash
sudo yum update -y && sudo yum install ruby wget -y && cd /home/ec2-user && wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install && chmod +x ./install && sudo ./install auto && rm install && sudo systemctl enable codedeploy-agent
sudo groupadd www && sudo useradd -m -N www && sudo usermod -aG www www && sudo passwd -d www
sudo -i -u  www bash << EOF
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install v18
npm init -y >/tmp/test
npm install express --save>>/tmp/test
EOF
