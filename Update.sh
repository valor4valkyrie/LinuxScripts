#!/bin/bash
date > /var/log/UpdateLog.txt && apt-get update >> /var/log/UpdateLog.txt && apt-get dist-upgrade -y >> /var/log/UpdateLog.txt && apt autoremove -y >> /var/log/UpdateLog.txt && apt autoclean -y >> /var/log/UpdateLog.txt
