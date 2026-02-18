# 🧨 Day 3: Linux Basics for Hackers

### “From typing commands to wielding tools like a calm, ethical cyber ninja” 🐧⚔️💻

## Day 3 is where Linux stops being just an OS… and becomes a weaponized playground 😌🔥

- Today we moved from “I can use Linux” → to → “I can hunt, scan, and analyze like a baby security engineer.”

- No chaos. No guessing. Just clean commands and controlled power 💣✨

## 📚 What I Learned Today

### 🧠 Big Idea

- Linux is the foundation of cybersecurity tools.

- Most hacking, defense, SOC, and security engineering workflows run on Linux.

- So mastering these commands = mastering the battlefield 🪖

# 🛠️ Core Cybersecurity Tools

| Tool                | Purpose                            |
| ------------------- | ---------------------------------- |
| **Nmap**            | Scan networks & find open ports 🔍 |
| **Wireshark**       | Capture & analyze packets 🔐       |
| **Metasploit**      | Launch exploits & payloads 💣      |
| **Burp Suite**      | Web app hacking & testing 🌐       |
| **Hydra**           | Bruteforce login credentials 👊    |
| **John the Ripper** | Crack hashed passwords 🧂          |
| **Aircrack-ng**     | Wireless network attacks 📶        |

## 💭 Translation:

- These tools = the Avengers of cybersecurity 🦸🏽‍♀️

## 📂 Navigating the Linux Filesystem Like a Pro

### 📍 Where Am I?

```
pwd

```
- Shows your current location in the Linux directory tree 🌳

### 👤 Who Am I?

```

whoami

```

- Displays the logged-in user (important for permissions 🔐)

### 🚶🏽 Moving Through Directories

```
cd /etc

```
- Go to config files hub 🧠

```
cd ..

```

- Move up one level

```

cd ../..

```
- Move up two levels

```
cd ../../..

```
- Climb up like a filesystem ninja 🧗🏽‍♀️

## 📦 Listing Files & Understanding Permissions

### Basic Listing

```
ls

```

### Detailed View

```
ls -l

```
- Example output:

```
drwxr-xr-x  2 root root 4096 Feb 18 10:00 apache2

```

## 🔐 Permission Breakdown

| Symbol | Meaning       |
| ------ | ------------- |
| `d`    | directory     |
| `-`    | regular file  |
| `l`    | symbolic link |

- Permissions grouped:

```
rwx r-x r-x
│   │   │
│   │   └─ others
│   └──── group
└──────── owner

```

- Meaning:

    - Owner: full control 🧑🏽‍💻

    - Group: read & enter 👀

    - Others: read & enter only 🚪    

## 🔍 Finding Files Like a Threat Hunter

### 📡 locate (fast search via database)

```
locate aircrack-ng

```

- Update its database:

```
sudo updatedb

```

## 🎯 find (exact matches)

```
sudo find /etc -type f -name apache2*

```
- Wildcards:

    - ```*``` → any characters

    - ```?``` → single character

    - ```[]``` → match a set

## 🧠 whereis vs which

```
whereis nmap

```
- Shows:

    - Binary location

    - Source

    - Manual page

```
which nmap

```

- Shows only the binary path in ```$PATH```

- PATH = directories Linux searches for commands 🗺️

## 🔎 Filtering & Piping Output

### grep Magic ✨

```
cat /etc/apache2/apache2.conf | grep mod

```

- Breakdown:

    - 1️⃣ ```cat``` reads file

    - 2️⃣ ```|``` sends output

    - 3️⃣ ```grep``` filters only matching lines

- Piping = command teamwork 🤝

## 📊 Process Monitoring

```
ps aux | grep apache2

```

- Meaning:

    - Show all processes

    - Filter for apache2 only

    - SOC analysts LIVE inside commands like this 😌💻

## 📁 Creating & Editing Files

### Create a File

```
touch notes.txt

```

### Write to a File

```
cat > hackingskills

```
- Press ```CTRL+D``` to save & exit

### Append to File

```
cat >> hackingskills

```

## 📂 Managing Directories

```

mkdir projects
cd projects
cp file.txt backup.txt
mv file.txt newname.txt
rmdir emptydir
rm -r folder

```

- ⚠️ ```rm -r``` = dangerous

- Deletes EVERYTHING recursively 😭💣

## 📖 Viewing File Content Like a Hacker

```
head -20 file.txt
tail -20 file.txt
nl file.txt
more file.txt
less file.txt

```
- ```less > more```

- Because you can scroll AND search 🔍

## 🔐 Password Attacks Concepts

### Dictionary Attack

Trying common passwords from a list 📚

Example wordlist: