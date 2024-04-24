#!/usr/bin/bash

# This script install minikube to run kubernetes locally
# Author: Azeez Yahaya
# Usage: ./install-minikube.sh

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

