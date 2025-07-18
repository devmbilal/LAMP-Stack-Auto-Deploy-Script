# Automated LAMP Stack Deployment with Security Hardening

This script sets up a complete LAMP stack (Linux, Apache, MySQL, PHP) and applies basic system hardening measures.

## Features
- Installs Apache, MySQL, and PHP
- Starts and enables services
- Secures MySQL with `mysql_secure_installation`
- Configures UFW to allow HTTP/HTTPS and SSH
- Disables root SSH login
- Sets appropriate file permissions

## Usage
```bash
chmod +x install_lamp.sh
sudo ./install_lamp.sh
