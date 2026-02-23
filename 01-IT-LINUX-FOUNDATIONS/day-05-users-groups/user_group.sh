echo "===== CREATING USERS & GROUPS ===="


#1. FIRST CREATING A GOUP
sudo groupadd developers

#2. Verifying if the group was created
tail /etc/group

#3. CREATING USER
sudo useradd -m analyst
echo "analyst:analyst123" | sudo chpasswd
sudo mkdir -p /logs
sudo chmod 700 /logs

echo "✅ Environment Ready"

#4. Adding user to to the group
sudo usermod -aG developers analyst

#4. verifying if the user was added
groups analyst