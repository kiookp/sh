#!/bin/bash

# Prompt user for new password
read -s -p "输入 root 的新密码: " password
echo

# Change root password
echo "root:$password" | sudo chpasswd root

# Modify SSH configuration
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config

# Reboot the system
sudo reboot
