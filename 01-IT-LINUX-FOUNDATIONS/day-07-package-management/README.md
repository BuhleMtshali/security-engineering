# 📦 Day 7 – Linux Package Management (APT & DPKG)

## 🧠 Overview

Today I learned how Linux manages software using **package management systems**.
Instead of manually installing apps like on Windows/macOS, Linux uses packages that bundle:

* Program files
* Supporting data
* Metadata (description, version, dependencies)
* Pre/post-install scripts for configuration

These packages are maintained by distribution maintainers who compile source code and prepare it for easy installation.

---

## 🧰 Tools Covered

| Tool   | What It Does                                                                                 | Example                    |
| ------ | -------------------------------------------------------------------------------------------- | -------------------------- |
| `apt`  | High-level package manager for installing, updating, and removing software from repositories | `apt install vim`          |
| `dpkg` | Low-level package manager used to install `.deb` files directly                              | `dpkg -i package_file.deb` |

---

## 🔄 How Package Management Works

1. Software is stored in **repositories**
2. Local package database must be updated
3. Packages are installed with dependencies automatically resolved
4. Updates keep the system secure and current

---

## 📚 Common Package Management Tasks

### 🔍 Update Package Database

```bash
sudo apt update
```

### 🔎 Search for a Package

```bash
apt search package_name
```

### 📥 Install a Package from Repository

```bash
sudo apt install package_name
```

### 📦 Install a Downloaded Package File

```bash
sudo dpkg -i package_file.deb
```

### 🗑️ Remove a Package

```bash
sudo apt remove package_name
```

### ⬆️ Update All Installed Packages

```bash
sudo apt update
sudo apt upgrade
```

### 📋 List Installed Packages

```bash
dpkg -l
```

### ❓ Check if a Package is Installed

```bash
dpkg -s package_name
```

### 📖 Show Package Information

```bash
apt show package_name
```

### 🧩 Find Which Package Installed a File

```bash
dpkg -S file_name
```

---

## 🧪 Key Takeaways

* `apt` is the main tool for managing software from repositories
* `dpkg` is used for manual installation of `.deb` files
* Always run `apt update` before installing or upgrading packages
* Package managers handle dependencies automatically, saving time and preventing errors

---

## 🚀 Skills Gained

* Managing software via terminal
* Installing and removing packages safely
* Querying package info and troubleshooting installations
* Understanding how Linux distributions maintain software ecosystems

---

## 🏁 Conclusion

Package management is the backbone of Linux system administration.
Mastering `apt` and `dpkg` makes maintaining and securing a system fast, efficient, and reliable.

Next stop: deeper Linux system operations 🔐🐧
