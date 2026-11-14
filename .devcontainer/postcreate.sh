#/bin/bash

# This is just a script following the install steps from here: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
# I've removed `sudo` from each command
# Ensure dependencies are installed first. Note that there's no sudo because this is for a rootless docker config.
apt-get update && apt-get install -y gnupg software-properties-common


wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

apt update

apt install -y terraform=1.12.1-1



