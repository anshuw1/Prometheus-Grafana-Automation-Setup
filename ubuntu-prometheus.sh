#!/bin/bash

# Fetched Latest Prometheus Version
LATEST_VERSION=2.53.1

# Check if wget is installed, if not, install it
if ! command -v wget &> /dev/null; then
    echo "wget could not be found, installing it..."
    sudo apt-get update
    sudo apt-get install -y wget
fi 
