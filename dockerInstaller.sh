#!/bin/bash

# 1. Update package lists
sudo apt update

# 2. Install dependencies
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# 3. Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 4. Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# 5. Update package lists again
sudo apt update

# 6. Install Docker Engine
sudo apt install -y docker-ce docker-ce-cli containerd.io

# 7. Create a docker group (if it doesn't exist)
sudo groupadd docker || true

# 8. Add your user to the docker group
sudo usermod -aG docker $USER

# 9. Apply permissions to docker.sock
sudo chmod 666 /var/run/docker.sock

# 10. Start Docker service
sudo systemctl start docker

# 11. Enable Docker to start on boot
sudo systemctl enable docker

# 12. Verify installation
docker --version

