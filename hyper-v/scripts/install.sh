#!/bin/bash
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
set -x

# create new ssh key
[[ ! -f /home/ubuntu/.ssh/mykey ]] \
&& mkdir -p /home/ubuntu/.ssh \
&& ssh-keygen -f /home/ubuntu/.ssh/mykey -N '' \
&& chown -R ubuntu:ubuntu /home/ubuntu/.ssh

# install packages
  apt-get update
  apt-get -y install docker.io ansible unzip git nodejs


# add docker privileges
usermod -G docker ubuntu

# install pip
pip install -U pip && pip3 install -U pip
if [[ $? == 127 ]]; then
    wget -q https://bootstrap.pypa.io/get-pip.py
    python get-pip.py
    python3 get-pip.py
fi

# install awscli and ebcli
pip install -U awscli
pip install -U awsebcli

#terraform
wget -q https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
unzip -o terraform_0.11.11_linux_amd64.zip -d /usr/local/bin
rm terraform_0.11.11_linux_amd64.zip



