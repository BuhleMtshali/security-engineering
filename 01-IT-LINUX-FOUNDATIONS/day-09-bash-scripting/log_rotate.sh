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

# 🧪 Step 4: Test Your Configuration

# Now force log rotation:

sudo logrotate -f /etc/logrotate.conf

# 🔎 Step 5: Check the Result

# Look at the logs again:
ls /var/log | grep boot

# You should see something like:
boot.log
boot.log.1
boot.log.2.gz