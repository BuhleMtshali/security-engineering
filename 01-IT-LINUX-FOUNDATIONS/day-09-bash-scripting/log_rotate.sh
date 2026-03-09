# Step 1: Pick a Log to Manage
# For a simple mini project, boot.log or dpkg.log is perfect because they’re plain logs and already exist.

/var/log/boot.log

# 🔎 Step 2: Inspect the Log

# First look at the log files
cat /var/log/boot.log

# Or just the latest entries:
tail /var/log/boot.log

# This shows what the log records.


# ⚙️ Step 3: Create Your Own Logrotate Rule
# Logrotate configs live here:
/etc/logrotate.d/

# Create a custom rule:
sudo nano /etc/logrotate.d/boot-log-mini

# Add this configuration:

/var/log/boot.log {
    weekly
    rotate 4
    compress
    missingok
    notifempty
}