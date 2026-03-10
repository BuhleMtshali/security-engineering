# Create the script file
nano system-health.sh

# Add the script content
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

# Save the file
# In nano, press Ctrl+O (to save), then Enter, then Ctrl+X (to exit).

# Make the script executable
chmod +x system-health.sh

# Run the script
./system-health.sh

# The report will be saved to /var/log/system-health-YYYY-MM-DD.log. You can view it using cat
cat /var/log/system-health-$(date +%F).log
