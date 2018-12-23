#!/bin/sh
sudo apt-get update -y  # updates ubuntu
sudo apt-get install build-essential -y     #installs required dependencies to install nvm
#below line install nvm
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
#below line downloads repos to install node
curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
# following line install node
sudo apt install nodejs -y
#following lline installs docker
sudo apt-get install docker.io -y
#following line downloads and installs required packages to install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
#folowing line changes permission to docker-compose folder
sudo chmod +x /usr/local/bin/docker-compose
# following line installs openssl
sudo apt-get install openssl -y
#following line installs git
sudo apt-get install git -y