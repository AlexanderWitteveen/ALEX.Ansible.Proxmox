# Ansible Collection - Proxmox
Documentation for the collection.

# Install
ansible-galaxy collection install git+https://github.com/AlexanderWitteveen/ALEX.Ansible.Proxmox.git

# Use playbook
vars="{\"args_dhcpipaddress\":\"hostip\"}"  
export ANSIBLE_CONFIG=/etc/ansible/ansible.cfg  
ansible-playbook alex.proxmox.rebuildvm -vv --extra-vars "$vars"

