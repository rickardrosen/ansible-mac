#!/bin/bash
sudo easy_install pip
sudo pip install ansible

while true; do
    read -p "Do you want natural scroll? (y/n): " yn
    case $yn in
        [Yy]* ) ansible-playbook devpc.yml -e "natural_scroll=true"; break;;
        [Nn]* ) ansible-playbook devpc.yml; break;;
        * ) echo "Please answer yes or no.";;
    esac
done