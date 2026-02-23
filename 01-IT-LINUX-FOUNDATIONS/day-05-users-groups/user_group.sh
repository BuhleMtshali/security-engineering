#!/bin/bash

echo "===== CREATING USERS & GROUPS ====="

# 1️⃣ Create group only if it doesn't exist
if ! getent group developers > /dev/null; then
    sudo groupadd developers
    echo "Group 'developers' created"
else
    echo "Group 'developers' already exists"
fi

# 2️⃣ Verify group
getent group developers

# 3️⃣ Create user only if not exists
if ! id "analyst" &>/dev/null; then
    sudo useradd -m analyst
    echo "User 'analyst' created"

    # Secure password prompt instead of hardcoding
    sudo passwd analyst
else
    echo "User 'analyst' already exists"
fi

# 4️⃣ Create secure logs directory
sudo mkdir -p /logs
sudo chmod 700 /logs

echo "✅ Environment Ready"

# 5️⃣ Add user to group
sudo usermod -aG developers analyst

# 6️⃣ Verify membership
groups analyst