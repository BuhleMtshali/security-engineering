# 🧠 Day 15 – Revision (Day 1–14) | Linux, Logs & Python Foundations

## 📌 Overview

This revision phase consolidates everything learned from Day 1 to Day 14, covering:

* Linux fundamentals 🐧
* File systems and permissions 🔐
* Log files and system monitoring 📜
* Git foundations 🌱
* Python scripting basics 🐍

The goal of this phase is to **reinforce core concepts** and ensure a strong foundation for more advanced topics in **cybersecurity and automation**.

---

# 🧭 Learning Journey Breakdown

## 🟢 Phase 1: Linux Fundamentals (Day 1–4)

### 🧠 Key Concepts

* Navigating the Linux file system
* Understanding directories like:

  * `/home`
  * `/var`
  * `/etc`
* Basic commands:

  * `ls` → list files
  * `cd` → change directory
  * `pwd` → show current path
  * `cat` → read file contents

### 🔐 File Permissions

* Read (`r`), Write (`w`), Execute (`x`)
* Commands:

  * `chmod` → change permissions
  * `chown` → change ownership

👉 Learned how Linux controls access to files and why permissions are critical for security.

---

## 🟡 Phase 2: Working with Logs (Day 5–11)

### 📜 What Are Logs?

Logs are records of system activity such as:

* User logins
* System events
* Errors
* Network activity

---

### 📂 Common Log Locations (Linux)

* `/var/log/syslog` → system logs
* `/var/log/auth.log` → authentication logs
* `/var/log/kern.log` → kernel logs

---

### 🔍 Log Analysis Skills

* Viewing logs:

  * `cat`
  * `less`
  * `tail -f` (real-time monitoring)

* Filtering logs:

  * `grep "error" file.log`

---

### 🔄 Log Rotation

* Prevents logs from growing too large
* Creates new log files
* Compresses old logs
* Deletes oldest logs

👉 Learned how systems manage log storage efficiently.

---

## 🟠 Phase 3: Git Foundations (Day 12–13)

### 🌱 Key Concepts

* Version control system for tracking code changes

### 🔧 Core Commands

* `git init` → start repository
* `git add` → stage changes
* `git commit` → save changes
* `git status` → check repo state

---

### 🌿 Branching & Merging

* Create branch:

  ```bash
  git checkout -b feature-branch
  ```

* Merge branch:

  ```bash
  git merge feature-branch
  ```

👉 Learned how to manage different versions of code and collaborate effectively.

---

## 🔵 Phase 4: Python for Scripting (Day 14)

### 🐍 Key Concepts

* Python as a scripting tool for automation
* More powerful and readable than Bash for complex logic

---

### 📂 File Handling

```python
with open("file.txt", "r") as file:
    for line in file:
        print(line)
```

---

### 🧪 Mini Project: Log IP Counter

Built a script that:

* Reads a log file
* Extracts IP addresses
* Counts occurrences
* Displays results

---

### 💻 Example Code

```python
log_file = "access.log"
ip_counts = {}

with open(log_file, "r") as file:
    for line in file:
        if line.strip() == "":
            continue

        parts = line.split()
        ip = parts[0]

        if ip in ip_counts:
            ip_counts[ip] += 1
        else:
            ip_counts[ip] = 1

for ip, count in ip_counts.items():
    print(f"{ip} -> {count}")
```

---

### ⚠️ Challenge Faced

* Encountered file path issues when using `/var/log/syslog` on macOS
* Learned that different operating systems store logs differently

---

# 🔗 How Everything Connects

| Skill            | Real-World Use                   |
| ---------------- | -------------------------------- |
| Linux commands   | Navigate and manage systems      |
| Permissions      | Secure files and restrict access |
| Logs             | Monitor system activity          |
| Git              | Track and manage code changes    |
| Python scripting | Automate analysis and tasks      |

---

# 🚀 Key Takeaways

* Linux is the foundation of cybersecurity
* Logs are critical for monitoring and investigations
* Git is essential for version control
* Python enables automation and data processing
* Environment matters (Linux vs macOS differences)

---

# 🔥 Growth Reflection

From Day 1 to Day 14, I progressed from:

👉 Navigating basic Linux commands
👉 Understanding system internals
👉 Analyzing logs
👉 Managing code with Git
👉 Writing Python scripts for automation

---

# 🎯 Conclusion

This revision phase reinforced the core skills required for a career in:

* Cybersecurity
* Security Operations (SOC)
* System Administration
* Security Data Engineering

These foundations will support more advanced topics such as:

* Threat detection
* Log analysis at scale
* Automation pipelines

---

# 🧠 Next Steps

* Build more advanced log analysis tools
* Learn regular expressions (regex)
* Automate security workflows
* Start working with real-world datasets

---

✨ This marks the transition from **learning basics** to **building real tools**.
