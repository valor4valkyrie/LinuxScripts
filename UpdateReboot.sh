#!/bin/bash
apt-get update && apt-get dist-upgrade -y && apt autoremove -y && apt autoclean -y && reboot
