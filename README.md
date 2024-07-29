# Prometheus-Grafana-NodeExporter Automation Setup

## Overview

The idea of this project is to make easy an automated script for quickly installing and configuring Prometheus, Grafana, and NodeExporter, making it easier to set up a powerful monitoring system. With weekly updates and a straightforward design, it allows for effective monitoring and data visualisation without the need for manual configuration

## Features

- **Automated Setup**: Easily install and configure Prometheus, Grafana, and NodeExporter.
- **Weekly Updates**: Automatically fetches the latest versions to keep your system current.
- **User-Friendly**: Simplifies the setup process, allowing you to focus on monitoring and visualization.

## Prerequisites

- Linux-based server (preferably Amazon Linux)
- Git installed on the server
- Basic knowledge of the Linux command line

## Installation

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/anshuw1/Prometheus-Grafana-NodeExporter-Automation-Setup.git
    cd Prometheus-Grafana-NodeExporter-Automation-Setup
    ```

2. **Run the Setup Script**:
    ```sh
    chmod +x setup.sh
    ./setup.sh
    ```

## Usage

- The script will handle the installation and configuration, ensuring your monitoring stack is operational.
- A cron job will update the Prometheus, Grafana, and NodeExporter versions weekly.

## Updating

The scheduled job automatically updates the versions. To manually update, rerun the setup script:
```sh
./setup.sh
```

## Contributing
We welcome contributions! Please fork the repository, create a pull request with your changes.
