# 🐝 Day 5 – Users & Groups (Linux Foundations)

## What I Did Today 🚀

Today was all about becoming the system’s HR manager 🧑🏽‍💻
I learned how Linux handles users, groups, permissions, and how to automate admin tasks using a `.sh` script like a mini DevSecOps engineer 🔐⚙️

Instead of manually typing commands one by one, I created a shell script that:

* Creates a group
* Creates a user with a home directory
* Secures a logs directory
* Adds the user to the group
* Verifies everything worked

Basically… I automated system provisioning like a boss 😌💅🏽

---

# 🧠 Key Concepts I Learned

## 👥 Users & Groups

Linux uses:

* `/etc/passwd` → stores user account info (username, uid, home dir, shell)
* `/etc/group` → stores group info
* `/etc/shadow` → stores encrypted passwords 🔒

Each user has:

* `uid` → User ID
* `gid` → Primary Group ID
* Can belong to multiple groups

Command to check identity:

```bash
id
```

---

## 🔐 Permissions (rwx vibes)

Permissions control who can:

* `r` → read 📖
* `w` → write ✍🏽
* `x` → execute ⚡

Example:

```bash
ls -l
```

Shows:

* File type
* Permissions
* Owner
* Group

Changing permissions:

```bash
chmod 700 /logs
```

Meaning:

* Owner = full access
* Group & others = no access

Security level: locked down like Fort Knox 🏰

---

## 👑 Root vs Normal User

* Root = can do ANYTHING 💀
* Normal users = limited powers (safer)

Switch users:

```bash
su - username
```

Run admin commands safely:

```bash
sudo command
```

---

# 📜 My Day 5 Script (Users & Groups Automation)

```bash
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
```

---

# 🤖 What is a `.sh` File?

A `.sh` file is basically telling Linux:

> “Here’s a list of commands… run them automatically for me.” ⚡

Instead of typing commands manually, the script executes everything in one go like a loyal robot 🤖

---

# ▶️ How I Ran My Script

```bash
chmod +x user_group.sh
sudo ./user_group.sh
```

If permissions complain:

```bash
sudo bash user_group.sh
```

---

# 🔍 Commands I Practiced Today

| Command           | Purpose                           |
| ----------------- | --------------------------------- |
| `id`              | Show user UID, GID & groups       |
| `groupadd`        | Create a group                    |
| `useradd -m`      | Create a user with home directory |
| `passwd`          | Set or change user password       |
| `usermod -aG`     | Add user to a group               |
| `groups username` | Verify group membership           |
| `chmod`           | Change file permissions           |
| `ls -l`           | View file permissions             |
| `sudo`            | Run commands as superuser         |
| `su - username`   | Switch to another user            |

---

# 💥 Challenges I Faced

* Password authentication failing when switching users 😭
* Keyboard layout issues (`|` pipe symbol drama 💀)
* Script asking for sudo password multiple times
* Understanding difference between root vs normal user permissions

But we debugged like real engineers do 🧠🔧

---

# 🏆 What I Can Do Now

After Day 5 I can:

* Create & manage users 👤
* Create & manage groups 👥
* Secure directories with permissions 🔐
* Automate admin setup using bash scripts ⚙️
* Verify access & group membership 🔍

Basically… I can now set up a secure analyst environment like a baby SOC engineer 🛡️

---

# 📚 Resources Used

* Linux terminal practice (Kali Linux on UTM)
* Course book: Linux Foundations – Users & Groups
* Hands-on scripting & debugging
* ChatGPT guidance for troubleshooting & script optimization

---

# 🧃 Final Thoughts

Today felt like unlocking the “sysadmin starter pack” 🎒
Users, groups, permissions, automation… all starting to click.

Lowkey feels powerful knowing I can create users, lock down directories, and script the whole setup in seconds 😮‍💨💻

Security Engineer Zanobuhle loading… ███████░░░ 70% 🚀🔐
