#!/bin/bash

# Fetched Latest Prometheus Version
LATEST_VERSION=2.53.1

# Check if wget is installed, if not, install it
if ! command -v wget &> /dev/null; then
    echo "wget could not be found, installing it..."
    sudo apt-get update
    sudo apt-get install -y wget
fi 

# Construct the download URL
DOWNLOAD_URL="https://github.com/prometheus/prometheus/releases/download/v${LATEST_VERSION}/prometheus-${LATEST_VERSION}.linux-amd64.tar.gz"

# Download the latest version of Prometheus
wget $DOWNLOAD_URL

# Extract the downloaded tarball
tar -xf prometheus-${LATEST_VERSION}.linux-amd64.tar.gz

# Move the binaries to /usr/local/bin
sudo mv prometheus-${LATEST_VERSION}.linux-amd64/prometheus prometheus-${LATEST_VERSION}.linux-amd64/promtool /usr/local/bin

# Create directories for configuration files and other Prometheus data
sudo mkdir -p /etc/prometheus /var/lib/prometheus

# Move console libraries
sudo mv prometheus-${LATEST_VERSION}.linux-amd64/console_libraries /etc/prometheus

# Clean up the extracted files
sudo rm -rvf prometheus-${LATEST_VERSION}.linux-amd64*
