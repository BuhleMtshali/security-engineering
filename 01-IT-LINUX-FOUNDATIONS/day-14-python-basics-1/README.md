# 🐍 Day 14 – Python Basics for Scripting (Log Analysis Mini Project)

## 📌 Overview

On Day 14, I explored **Python for scripting**, focusing on how it differs from Bash and how it can be used to automate tasks and analyze system data.

As a mini project, I built a **log file parser** that reads a log file and counts how many times each IP address appears. This simulates real-world use cases in **security monitoring and log analysis**.

---

# ⚙️ Tools Used

* Python 3
* VS Code
* Linux (Kali VM)
* Terminal (CLI)

---

# 🧠 Key Concepts Learned

## 1️⃣ Python vs Bash Scripting

| Bash 🐚                           | Python 🐍                     |
| --------------------------------- | ----------------------------- |
| Best for quick system commands    | Best for logic and automation |
| Hard to scale for complex scripts | Clean and readable            |
| Native to Linux systems           | Works across platforms        |

👉 **Conclusion:**
Bash is great for quick tasks, but Python is better for building scalable tools.

---

## 2️⃣ File Handling in Python

Learned how to open and read files:

```python
with open("file.txt", "r") as file:
    for line in file:
        print(line)
```

* `"r"` → read mode
* `with` → safely handles file closing

---

## 3️⃣ Working with Logs

* Logs store system activity and events
* Located in `/var/log/` on Linux systems
* Used for monitoring, debugging, and security analysis

---

## ⚠️ Challenge Faced

Attempted to read:

```python
log_file = "/var/log/syslog"
```

But encountered:

```
FileNotFoundError: No such file or directory
```

### 🔍 Cause

This occurred because I was running the script on **macOS**, which does not use `/var/log/syslog`.

### ✅ Solution

* Used a **sample log file** (`access.log`) for testing
* Switched to **Kali Linux VM** for real system logs

---

# 🧪 Mini Project: IP Log Analyzer

## 🎯 Objective

* Read a log file
* Extract IP addresses
* Count occurrences
* Display results

---

## 🧾 Sample Log File

```text
192.168.1.1 - - [10/Mar/2026] "GET /index.html"
10.0.0.5 - - [10/Mar/2026] "POST /login"
192.168.1.1 - - [10/Mar/2026] "GET /about"
```

---

## 💻 Python Script

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

## 📊 Output Example

```
192.168.1.1 -> 2
10.0.0.5 -> 1
```

---

# 🚀 Improvements Made

* Handled empty lines to prevent errors
* Used dictionary for efficient counting
* Structured code for readability

---

# 🔥 Future Enhancements

* Sort IPs by highest frequency
* Detect suspicious activity (e.g., too many requests)
* Export results to a file (CSV or TXT)
* Accept log file as user input
* Use regex for more flexible IP extraction

---

# 🧠 What I Learned

Through this project, I learned how to:

* Use Python for automation and scripting
* Read and process files line by line
* Extract and analyze structured data
* Handle real-world issues like file paths and permissions
* Understand environment differences (Linux vs macOS)

---

# 🎯 Conclusion

This project demonstrates how Python can be used to analyze log data and extract meaningful insights. These skills are foundational for roles in **cybersecurity, system administration, and data engineering**.
