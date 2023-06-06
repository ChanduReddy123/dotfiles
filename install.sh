#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
export USERNAME=`whoami`

sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  apt-transport-https \
  build-essential \
  curl \
  git \
  jq \
  lsb-release \
  sudo \
  unzip \
  wget 
  
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

sudo apt-get autoremove -y
sudo rm -rf /var/lib/apt/lists/*

# install homebrew
NONINTERACTIVE=1 /bin/bash -c "(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" | /bin/bash

echo "set KUBE_EDITOR 'code --wait'" >> ~/.config/fish/config.fish
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.config/fish/config.fish