# 📅 Day 4 – Linux Permissions & Processes

Today was all about power and control… not in a villain arc way 😭 but in a *Linux system mastery* way.
I dove into **file permissions**, **user ownership**, and how Linux manages **running processes** behind the scenes.

Basically, I learned who can touch what file, and which programs are alive and breathing in the system 👀⚙️

---

# 🔐 What I Learned Today

## 🛡️ Users, Ownership & Permissions

Linux is very strict about “who owns what.”
Every file has:

* 👤 Owner (user)
* 👥 Group owner
* 🌍 Others (everyone else)

And each of them gets different powers:
`r = read` • `w = write` • `x = execute`

So permissions are like:

```
-rwxr-xr--
```

Meaning:

* Owner → read, write, execute
* Group → read, execute
* Others → read only

Linux really said: “Not everyone deserves full access” 💀

---

## 🔢 Octal Permissions (The Secret Code)

Instead of letters, Linux can use numbers:

| Number | Permission |
| ------ | ---------- |
| 4      | Read       |
| 2      | Write      |
| 1      | Execute    |

So:

```
7 = rwx
6 = rw-
5 = r-x
4 = r--
```

Example:

```bash
chmod 755 script.sh
```

Means:

* Owner → full control
* Group → read + execute
* Others → read + execute

Basically: “You can run it, but don’t touch my code” 😌

---

## 🧑‍💻 Ownership Commands

I learned how to control file ownership like a system admin boss:

```bash
chown alice file.txt      # change owner
chgrp devs file.txt       # change group
sudo chown alice:devs file.txt
```

Only the **owner or superuser** can change permissions or ownership.
Linux said boundaries are healthy 🧘🏽‍♀️

---

# ⚙️ Processes & Job Control

This part was giving *behind-the-scenes OS drama*.
Every running program = a **process**.

Linux tracks them using a **PID (Process ID)** like student numbers 🎓

---

## 🔍 Viewing Processes

```bash
ps
ps aux
top
```

* `ps` → snapshot of running processes
* `top` → real-time system monitor (CPU & memory usage)

Watching `top` felt like peeking into the Matrix fr 😭💚

---

## 🎮 Foreground vs Background Jobs

Foreground = blocks the terminal
Background = runs silently while you do other things

Run in background:

```bash
sleep 100 &
```

Check jobs:

```bash
jobs
```

Bring it back:

```bash
fg %1
```

Send it away again:

```bash
bg %1
```

This is literally task multitasking but for the terminal 💅🏽

---

## 💀 Killing Processes (When They Misbehave)

If a program freezes, Linux lets you end it like:

```bash
kill 1234
killall firefox
```

Because sometimes apps need to be ✨ respectfully escorted out ✨

---

# 🧠 Key Concepts

* Every file has an owner, group, and others
* Permissions control read, write, and execute access
* Octal numbers represent permission combinations
* Processes are running programs with unique PIDs
* Foreground jobs block the terminal, background jobs don’t
* Signals like `kill` control process life cycle

---

# 🧪 Commands Practiced Today

```bash
id
chmod 755 script.sh
umask 022
ps aux
top
jobs
bg %1
fg %1
kill 1234
```

---

# 😵 Challenges I Faced

* Keyboard layout confusion when typing `|`
* Password issues when switching users (`su`)
* Understanding octal permissions at first
* Mixing up foreground vs background jobs

But we pushed through like real engineers do 🧠⚡

---

# 📚 Resources Used

* 📖 The Linux Command Line (3rd Edition) – Chapters 9 & 10
* 🖥️ Terminal practice on Linux VM
* 📘 `man chmod`, `man ps`, `man top`

---

# 🏁 End of Day Reflection

Today felt like unlocking **admin powers** on Linux 🔓🐧
Now I actually understand:

* Who can access files
* How to control permissions
* How Linux manages running programs

We’re not just typing commands anymore…
We’re starting to *control the operating system itself* 😭🔥
