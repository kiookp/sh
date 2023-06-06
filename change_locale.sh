#!/bin/bash

# Step 1: Edit /etc/locale.gen
sudo sed -i '/en_US.UTF-8 UTF-8/s/^# //g' /etc/locale.gen
sudo sed -i '/zh_CN.UTF-8 UTF-8/s/^# //g' /etc/locale.gen

# Step 2: Regenerate locale
sudo locale-gen

# Step 3: Modify /etc/default/locale
sudo sed -i 's/^LANG=.*/LANG="en_US.UTF-8"/' /etc/default/locale
sudo sed -i 's/^LC_ALL=.*/LC_ALL="en_US.UTF-8"/' /etc/default/locale

# Step 4: Reboot the system
sudo reboot
