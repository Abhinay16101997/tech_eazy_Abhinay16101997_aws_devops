#!/bin/bash
sudo apt update -y
sudo apt install -y openjdk-19-jdk git
git clone https://github.com/techeazy-consulting/techeazy-devops
cd techeazy-devops
chmod +x start.sh
./start.sh

# Stop the instance after 30 minutes
shutdown -h +30

