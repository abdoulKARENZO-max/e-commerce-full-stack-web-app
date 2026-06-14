
 !/bin/bash
# install aws cli 
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip

sudo ./aws/install

# verify the installations commands
aws --version
ls
unzip awscliv2.zip