# 📜 Day 9 – Linux Logs & Logrotate

## 📌 Overview

On Day 9 I explored **Linux log files** and how the system manages them using **logrotate**.

Logs record system activity such as boot events, user logins, services starting, and errors. Over time these files can grow very large, so Linux uses **logrotate** to automatically archive, compress, and remove old logs.

The goal of this mini project was to inspect system logs and configure a **logrotate rule** to manage them.

---

# 🧠 What Is a Log File?

A **log file** records events that happen in the system or an application.

Logs help administrators:

* Monitor system activity
* Troubleshoot errors
* Investigate security incidents
* Track service behavior

Most Linux logs are stored in:

```
/var/log
```

---

# 📂 Exploring the System Logs

To view available logs I ran:

```
ls /var/log
```

Example output:

```
alternatives.log
apache2
apt
boot.log
dpkg.log
nginx
redis
sysstat
Xorg.0.log
```

These logs store different types of system information such as package installations, web server activity, and system boot messages.

---

# 🔎 Inspecting a Log File

I chose **boot.log** for this project.

Attempting to read the log as a normal user:

```
cat /var/log/boot.log
```

Result:

```
Permission denied
```

This happens because many log files are owned by **root** and cannot be read by normal users.

The correct way is to use elevated privileges:

```
sudo cat /var/log/boot.log
```

To view only the most recent entries:

```
sudo tail /var/log/boot.log
```

---

# 🔄 What Logrotate Does

Logrotate automatically manages log files to prevent them from growing indefinitely.

It performs several actions:

1. Renames the current log file
2. Creates a new empty log file
3. Compresses older logs to save disk space
4. Deletes the oldest logs after a specified number

Example lifecycle:

```
boot.log
boot.log.1
boot.log.2.gz
boot.log.3.gz
```

Where:

* `boot.log` → current active log
* `boot.log.1` → most recent archived log
* `.gz` → compressed older logs

---

# ⚙️ Creating a Custom Logrotate Rule

Logrotate configuration files are stored in:

```
/etc/logrotate.d/
```

I created a custom rule:

```
sudo nano /etc/logrotate.d/boot-log-mini
```

Configuration used:

```
/var/log/boot.log {
    weekly
    rotate 4
    compress
    missingok
    notifempty
}
```

Explanation of each rule:

| Rule       | Description                          |
| ---------- | ------------------------------------ |
| weekly     | rotate the log every week            |
| rotate 4   | keep four old logs                   |
| compress   | compress older logs                  |
| missingok  | ignore errors if log file is missing |
| notifempty | do not rotate if log file is empty   |

---

# 🧪 Testing Log Rotation

Logrotate normally runs automatically through a system timer.

To force it manually for testing:

```
sudo logrotate -f /etc/logrotate.conf
```

---

# 🔎 Verifying the Result

After forcing rotation I checked the logs again:

```
ls /var/log | grep boot
```

Output example:

```
boot.log
boot.log.1
boot.log.2
boot.log.3
boot.log.4
boot.log.5
boot.log.6
boot.log.7
```

This confirms that log rotation is working and older logs are being archived.

---

# ⚠️ Troubleshooting Encountered

### Permission Denied Error

Command used:

```
cat /var/log/boot.log
```

Error:

```
Permission denied
```

Solution:

```
sudo cat /var/log/boot.log
```

---

### Attempting to Run a File as a Command

I mistakenly ran:

```
sudo /var/log/boot.log
```

Error:

```
command not found
```

Reason:
Log files are not executable programs; they must be **read using commands like `cat`, `less`, or `tail`.**

---

### Incorrect Logrotate Syntax in Terminal

Attempted to run configuration directly in the terminal:

```
/var/log/boot.log {
 weekly
 rotate 4
}
```

This produced a shell parse error.

Solution:
Logrotate rules must be placed inside a **configuration file in `/etc/logrotate.d/`**, not executed in the terminal.

---

# 🧠 Key Takeaways

* Linux logs store important system activity.
* Most logs are located in `/var/log`.
* Many logs require **root privileges** to access.
* **Logrotate automatically manages log growth** by rotating, compressing, and deleting old logs.
* Custom rotation rules can be created in `/etc/logrotate.d/`.

---

# 🚀 Conclusion

This mini project demonstrated how Linux manages system logs and prevents them from consuming excessive disk space.

Understanding log files and log rotation is an essential skill for **system administrators, DevOps engineers, and cybersecurity professionals**, as logs provide critical insight into system behavior and security events.

---
