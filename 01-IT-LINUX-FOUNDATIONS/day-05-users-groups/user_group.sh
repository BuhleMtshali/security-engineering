echo "===== CREATING USERS & GROUPS ===="


#1. FIRST CREATING A GOUP
sudo groupadd developers

#2. Verifying if the group was created
tail /etc/group

#3. CREATING USER
sudo useradd -m analyst
echo "analyst:analyst123" | sudo chpasswd