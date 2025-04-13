
---

### 🖥️ `install_lamp.sh`
```bash
#!/bin/bash

echo "Updating system..."
sudo apt update -y && sudo apt upgrade -y

echo "Installing Apache..."
sudo apt install apache2 -y
sudo systemctl enable apache2

echo "Installing MySQL..."
sudo apt install mysql-server -y
sudo systemctl enable mysql

echo "Securing MySQL..."
sudo mysql_secure_installation

echo "Installing PHP..."
sudo apt install php libapache2-mod-php php-mysql -y
sudo systemctl restart apache2

echo "Setting up UFW firewall..."
sudo ufw allow OpenSSH
sudo ufw allow in "Apache Full"
sudo ufw enable

echo "Disabling root SSH login (optional)..."
sudo sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd

echo "LAMP stack installation and basic security hardening complete."
