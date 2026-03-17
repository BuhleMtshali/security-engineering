# 🧠 Day 12 – Advanced Log Processing & Text Manipulation (Linux)

## 📌 Overview

On Day 12 I explored powerful Linux text-processing tools used to **analyze, filter, transform, and extract insights from log files and structured data**.

This project focuses on mastering command-line utilities that are essential for:

* Log analysis
* Data cleaning
* System monitoring
* Security investigations
* Automation scripting

Instead of just reading logs, I learned how to **process and extract meaningful information from them efficiently**.

---

# ⚙️ Tools & Commands Covered

This project covers a wide range of Linux utilities:

* File viewing: `cat`, `less`, `more`, `head`, `tail`
* Searching: `grep`
* Data processing: `awk`, `sed`
* Sorting & filtering: `sort`, `uniq`
* Data extraction: `cut`
* Character transformation: `tr`
* Counting: `wc`
* File comparison: `diff`, `comm`
* Data merging: `paste`
* Formatting: `nl`, `rev`

---

# 🧠 Key Concepts

### 1️⃣ Logs as Data

Logs are not just text files, they are **structured datasets** that can be queried and transformed using command-line tools.

---

### 2️⃣ Pipelines (`|`)

Linux allows chaining commands together using pipes:

```bash
command1 | command2 | command3
```

Each command processes the output of the previous one, creating a powerful data-processing pipeline.

---

### 3️⃣ Automation Mindset

Instead of manually inspecting logs, I learned how to:

* Extract patterns
* Count occurrences
* Transform data
* Automate repetitive analysis

---

# 🔍 Core Command Examples

## 📖 Viewing Files

```bash
cat myfile.txt
less /var/log/syslog
head -20 file.txt
tail -f /var/log/syslog
```

---

## 🔎 Searching Logs

```bash
grep "error" /var/log/syslog
grep -i "failed" auth.log
grep -r "timeout" /var/log/
grep -n "error" syslog
```

---

## 🧮 Data Processing with `awk`

```bash
awk '{print $1}' data.txt
awk '$2 > 12' data.txt
awk '{sum += $2} END {print sum}' data.txt
```

---

## ✂️ Editing with `sed`

```bash
sed 's/apple/orange/g' fruits.txt
sed -i 's/2022/2023/g' report.txt
sed '/^$/d' notes.txt
```

---

## 📊 Sorting & Deduplication

```bash
sort names.txt
sort names.txt | uniq
sort items.txt | uniq -c
```

---

## ✂️ Extracting Data

```bash
cut -d: -f1 /etc/passwd
cut -f2,4 data.tsv
```

---

## 🔤 Transforming Text

```bash
tr 'a-z' 'A-Z'
tr -d '0-9'
```

---

## 🔢 Counting

```bash
wc -l file.txt
wc -w *.txt
```

---

# 🔥 Power of Pipelines (Real-World Use)

### Count failed login attempts

```bash
grep "Failed password" /var/log/auth.log | wc -l
```

---

### Find unique error messages

```bash
grep "error" server.log | sort | uniq
```

---

### Extract top IP addresses from logs

```bash
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head
```

---

### Monitor logs in real-time for errors

```bash
tail -f /var/log/syslog | grep "ERROR"
```

---

# 🧪 Practical Scenarios

## Scenario 1: Cleaning Data

```bash
cat large.csv | sort | uniq > cleaned.csv
sed 's/^ *//;s/ *$//' cleaned.csv > trimmed.csv
```

---

## Scenario 2: Log Analysis

```bash
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head
```

---

## Scenario 3: Extracting Specific Columns

```bash
cut -f2,4 data.tsv > output.txt
```

---

## Scenario 4: Live Monitoring

```bash
tail -f /var/log/app.log | grep "ERROR"
```

---

# ⚠️ Common Pitfalls

* Most commands are **case-sensitive**
* `sed -i` modifies files permanently → always test first
* `uniq` only removes **adjacent duplicates** → use `sort` before
* Wildcards (`*`) can match unintended files
* Pipelines should be tested step-by-step

---

# 🤖 Automation Example Script

A script that counts the most frequent words in a file:

```bash
#!/bin/bash
tr -cs "[:alpha:]" "[\n*]" < "$1" | sort | uniq -c | sort -nr
```

Usage:

```bash
chmod +x wordcount.sh
./wordcount.sh file.txt
```

---

# 🧠 What I Learned

Through this project I learned how to:

* Treat logs as structured data
* Extract meaningful insights using command-line tools
* Combine multiple commands into pipelines
* Clean and transform datasets efficiently
* Perform real-time monitoring and analysis
* Automate repetitive tasks using scripts

---

# 🔮 Future Improvements

* Build a **log alerting script**
* Integrate log parsing with Python
* Store logs in a database for querying
* Create dashboards for visualization
* Build a mini SIEM-like tool

---

# 🎯 Conclusion

This project demonstrates how powerful Linux command-line tools can be when combined effectively. Mastering these utilities enables efficient log analysis, data processing, and automation, which are critical skills in **DevOps, Data Engineering, and Cybersecurity**.

Understanding how to manipulate and extract data from logs is a foundational step toward building advanced monitoring and security systems.
