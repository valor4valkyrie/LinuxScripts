#!/bin/bash
sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt install --install-recommends linux-generic-hwe-18.04 xserver-xorg-hwe-18.04 -y && sudo apt-get autoremove -y && sudo apt-get autoclean -y && sudo apt-get clean && shutdown now
