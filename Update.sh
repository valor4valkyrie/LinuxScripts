#!/bin/bash

date > /var/log/UpdateLog.txt

apt-get update >> /var/log/UpdateLog.txt
apt-get dist-upgrade -y >> /var/log/UpdateLog.txt
apt-get autoremove -y >> /var/log/UpdateLog.txt
apt-get autoclean -y >> /var/log/UpdateLog.txt

if flatpak --version &> /dev/null; then
    sudo -u $USER flatpak upgrade -y >> /var/log/UpdateLog.txt
fi
