# 🖥️ Day 10 – Linux System Health Check Script

## 📌 Overview

On Day 10 I built a **Bash system health monitoring script** that generates a report containing key system metrics such as:

* Disk usage
* CPU load
* Memory usage
* Failed system services
* System uptime

The script automatically saves the report to the **Linux log directory** with a timestamped filename for easy tracking.

This project demonstrates basic **Linux automation, system monitoring, and log generation using Bash scripting**.

---

# ⚙️ Technologies Used

* Bash scripting
* Linux command line utilities
* Systemd service inspection
* Log file management

Commands used in the script include:

* `df`
* `uptime`
* `free`
* `systemctl`
* `awk`
* `hostname`
* `date`

---

# 📂 Project Structure

```
linux-foundations/
│
├── day10-system-health/
│   ├── system-health.sh
│   └── README.md
```

---

# 🧠 How the Script Works

The script collects system information and writes the output to a log file located in:

```
/var/log/
```

The log filename automatically includes the current date:

```
/var/log/system-health-YYYY-MM-DD.log
```

Example:

```
/var/log/system-health-2026-03-10.log
```

---

# 📜 Script

```bash
#!/bin/bash
LOGFILE="/var/log/system-health-$(date +%F).log"
HOSTNAME=$(hostname)
DATE=$(date)

{
echo "============================================"
echo " System Health Report for $HOSTNAME"
echo " Generated on: $DATE"
echo "============================================"

# Disk Usage
echo -e "\nDisk Usage:"
df -h --output=source,size,used,avail,pcent,target | tail -n +2

# CPU Load
echo -e "\nCPU Load (1/5/15 min average):"
uptime | awk -F'load average:' '{ print " " $2 }'

# Memory Usage
echo -e "\nMemory Usage:"
free -h | awk 'NR==1 || /Mem|Swap/ { printf " %-10s %-10s %-10s %-10s %-10s %-10s\n", $1, $2, $3, $4, $5, $6 }'

# Failed Services
echo -e "\nFailed Systemd Services:"
FAILED=$(systemctl --failed --no-legend)
if [ -z "$FAILED" ]; then
  echo " No failed services."
else
  echo "$FAILED"
fi

# Uptime
echo -e "\nSystem Uptime:"
echo " $(uptime -p)"
} > "$LOGFILE"

echo "Report generated and saved to $LOGFILE"
```

---

# 🚀 How to Run the Script

### 1️⃣ Create the file

```
nano system-health.sh
```

Paste the script and save the file.

---

### 2️⃣ Make the script executable

```
chmod +x system-health.sh
```

---

### 3️⃣ Run the script

Because the script writes to `/var/log`, it requires **root privileges**:

```
sudo ./system-health.sh
```

---

# 📊 Example Output

Example report generated on the system:

```
============================================
 System Health Report for kali
 Generated on: Tue 10 Mar 2026 20:22:32 SAST
============================================

Disk Usage:
udev            1.8G     0  1.8G   0% /dev
tmpfs           392M  1.3M  390M   1% /run
/dev/vda3        59G   14G   43G  25% /

CPU Load (1/5/15 min average):
 0.05, 0.04, 0.00

Memory Usage:
 total      used       free       shared     buff/cache available
 Mem:       3.8Gi      782Mi      2.5Gi
 Swap:      3.3Gi      0B         3.3Gi

Failed Systemd Services:
 No failed services.

System Uptime:
 up 6 hours, 2 minutes
```

---

# 🧩 What I Learned

Through this project I learned how to:

* Automate system monitoring using Bash
* Capture command output and write it to log files
* Use variables and command substitution in scripts
* Format terminal output using `awk`
* Inspect system services with `systemctl`
* Work with system directories like `/var/log`

---

# 🔮 Future Improvements

Possible upgrades to this script include:

* Disk usage alerts when space exceeds 80%
* Email notifications when services fail
* Automatic scheduling using `cron`
* Log rotation using `logrotate`
* CPU and memory threshold warnings

---

# 🎯 Conclusion

This project demonstrates how simple Bash scripts can automate routine system administration tasks. Generating structured health reports makes it easier to monitor system performance and quickly detect potential issues.

This script could serve as a **foundation for more advanced monitoring tools used in DevOps and system administration environments**.
