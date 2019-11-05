 #!/bin/bash         

clear
echo "welcome"
read -p "Install gadmin, apache2, php, mysql, synaptic, openssh-server, turn firewall on and  open port 21 in firewall (S/N) " option

if [[ $option == "s" ]] || [[ $option == "S" ]] || [[ $option == "Y" ]]|| [[ $option == "y" ]];then
echo " Instaling software "

sudo apt update
sudo apt install openssh-server
ssh-keygen -t rsa
sudo apt-get update
sudo apt-get install gadmin-samba
sudo apt-get install apache2
sudo apt-get install mysql-server
sudo mysql_secure_installation
sudo apt-get install php libapache2-mod-php
sudo apt install synaptic
sudo ufw enable
sudo ufw allow ftp
sudo ufw allow 21
sudo ufw status

elif [[ $option == "n" ]] || [[ $option == "N" ]];then
echo "bye"

fi
