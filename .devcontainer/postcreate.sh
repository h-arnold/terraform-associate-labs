#/bin/bash

# This is just a script following the install steps from here: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
# I've removed `sudo` from each command because I'm running Docker in rootless mode. See details on how to do that here: https://docs.docker.com/engine/security/rootless/
# You  will need to add those back in if you're running regular Docker.

apt-get update && apt-get install -y gnupg software-properties-common


wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

apt update

apt install -y terraform=1.12.1-1



