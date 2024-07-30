#!/bin/bash
sudo apt-get update

# Fetch the latest Grafana version
LATEST_VERSION=11.1.0 

# Install necessary dependencies
sudo apt-get install -y adduser libfontconfig1

# Construct the download URL for the latest version
DOWNLOAD_URL="https://dl.grafana.com/enterprise/release/grafana-enterprise_${LATEST_VERSION}_amd64.deb"

# Download the latest version of Grafana Enterprise
wget $DOWNLOAD_URL -O grafana-enterprise_latest_amd64.deb

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download Grafana Enterprise. Please check the URL or network connection."
    exit 1
fi

# Install Grafana Enterprise
sudo dpkg -i grafana-enterprise_latest_amd64.deb
