#!/bin/bash
sudo apt-get update
sudo apt-get install git -y
cd ~/
git clone https://github.com/RubenHarms/serverDeploy.git
cd serverDeploy
sudo ./install
