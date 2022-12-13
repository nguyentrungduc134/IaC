sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config    
sudo systemctl restart sshd.service
sudo echo "123456" | passwd --stdin root
