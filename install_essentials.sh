#! /bin/bash
# Install nmtui
sudo dnf -y install NetworkManager NetworkManager-tui -y

# NodeJS
sudo dnf install nodejs -y

# Golang
sudo dnf install golang -y

# install c++
sudo dnf install gcc-c++

# Chrome
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome -y
sudo dnf sudo dnf install google-chrome-stable -y

# nmap
sudo dnf install nmap

# kubectl
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF
sudo yum install -y kubectl

# completion kubectl for fish
fish
kubectl completion fish | source
exit

# helm
sudo dnf install helm -y

# docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo systemctl enable docker --now
