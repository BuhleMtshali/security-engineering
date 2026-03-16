# 📜 Day 11 – Linux Log Monitoring & Analysis

## 📌 Overview

On Day 11 I explored **Linux system logs**, learning how operating systems record important events such as system activity, errors, authentication attempts, and service failures.

Logs are essential for:

* Troubleshooting system issues
* Monitoring server health
* Detecting security incidents
* Auditing system activity

In this project I practiced locating log files, reading them, filtering important information, and monitoring logs in real time.

---

# 🧠 What Are Log Files?

A **log file** is a file where a system or application records events that happen during operation.

These events may include:

* System startup and shutdown
* User logins and authentication attempts
* Service errors
* Software activity
* Security warnings

Logs act like a **history book of everything happening inside a system**.

---

# 📂 Where Logs Are Stored

Most Linux logs are stored in the directory:

```
/var/log
```

To view the directory:

```
ls /var/log
```

Common log files include:

| Log File            | Purpose                           |
| ------------------- | --------------------------------- |
| `/var/log/syslog`   | General system activity           |
| `/var/log/auth.log` | Login attempts and authentication |
| `/var/log/kern.log` | Kernel messages                   |
| `/var/log/boot.log` | System boot messages              |
| `/var/log/dpkg.log` | Package installation activity     |
| `/var/log/apache2/` | Web server logs                   |

---

# 🔎 Viewing Log Files

### View an entire log file

```
cat /var/log/syslog
```

---

### View the beginning of a log

```
head /var/log/syslog
```

---

### View the last lines of a log

```
tail /var/log/syslog
```

---

### Monitor logs in real time

```
tail -f /var/log/syslog
```

This command continuously displays new log entries as they are written.

---

# 🔍 Searching Logs

Logs can be very large, so filtering is important.

### Search for errors

```
grep "error" /var/log/syslog
```

---

### Search for failed logins

```
grep "Failed password" /var/log/auth.log
```

---

### Search with line numbers

```
grep -n "error" /var/log/syslog
```

---

# 🧪 Example Security Check

To check if someone attempted to access the system unsuccessfully:

```
grep "Failed password" /var/log/auth.log
```

This shows failed SSH login attempts.

---

# 📡 Real-Time Security Monitoring

Monitor login activity live:

```
sudo tail -f /var/log/auth.log
```

This is commonly used by system administrators to detect suspicious activity.

---

# 🔄 Log Rotation

Log files can grow very large, which can consume disk space.

Linux uses **log rotation** to manage logs automatically.

Log rotation:

* Creates a new log file
* Compresses older logs
* Deletes the oldest logs after a period of time

Configuration is managed by:

```
/etc/logrotate.conf
```

You can also view service-specific rules inside:

```
/etc/logrotate.d/
```

Example rotated logs:

```
syslog
syslog.1
syslog.2.gz
```

---

# 📊 Practical Commands Practiced

| Command       | Purpose            |
| ------------- | ------------------ |
| `ls /var/log` | List log files     |
| `cat`         | View entire log    |
| `head`        | View first lines   |
| `tail`        | View last lines    |
| `tail -f`     | Monitor logs live  |
| `grep`        | Search inside logs |

---

# ⚠️ Permissions Note

Some logs require **administrator privileges**.

Example:

```
sudo cat /var/log/auth.log
```

Without `sudo`, access may be denied.

---

# 🎯 What I Learned

Through this exercise I learned how to:

* Locate Linux log files
* Inspect system events
* Monitor logs in real time
* Filter logs for important information
* Understand log rotation
* Identify authentication activity

These skills are essential for **system administration, DevOps, and cybersecurity monitoring**.

---

# 🔮 Future Improvements

Next steps could include:

* Building a **script that scans logs automatically**
* Sending alerts for suspicious activity
* Creating a **custom log monitoring tool**
* Automating log analysis with Bash or Python

---

# 🏁 Conclusion

Logs provide valuable insight into how a system operates and are critical for diagnosing problems and detecting security incidents. Understanding how to locate, read, and analyze logs is a fundamental Linux skill used by developers, system administrators, and security engineers.
