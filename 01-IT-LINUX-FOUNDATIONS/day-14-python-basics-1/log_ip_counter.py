# This is just a variable 

log_file = "/var/log/syslog"

# CREATING A DICTIONARY
ip_counts = {}

# WE NEED TO OPEN THE FILE IN READING MODE
with open(log_file, "r") as file:
    for line in file:
        parts = line.split()
        ip = parts[0]
        if ip in ip_counts:
            ip_counts[ip] += 1
        else:
            ip_counts[ip] = 1