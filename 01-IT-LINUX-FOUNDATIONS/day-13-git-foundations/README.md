# 🧬 Day 13 – Git Foundations

## 📌 Overview

On Day 13 I learned the fundamentals of **Git**, a distributed version control system used to track changes in code and collaborate with other developers.

Git allows developers to:

* Track code history
* Collaborate safely
* Manage different versions of a project
* Revert changes when needed

This project focuses on understanding the **core Git workflow and commands**.

---

# ⚙️ Tools Used

* Git (CLI)
* GitHub

---

# 🧠 Key Concepts

## 1️⃣ Version Control

Version control is a system that records changes to files over time so you can:

* Revisit previous versions
* Compare changes
* Restore earlier states

---

## 2️⃣ Git Workflow

The Git workflow consists of three main areas:

| Area              | Description                |
| ----------------- | -------------------------- |
| Working Directory | Where files are edited     |
| Staging Area      | Where changes are prepared |
| Repository        | Where snapshots are stored |

---

## 3️⃣ Commits

A commit is a **snapshot of your project at a specific point in time**.

Each commit includes:

* Changes made
* Author information
* Timestamp
* Commit message

---

## 4️⃣ Branching

Branches allow you to work on different features independently.

* `main` → production-ready code
* feature branches → development work

---

## 🔧 Common Git Commands

## Initialize a Repository

```bash
git init
```

---

## Check Status

```bash
git status
```

---

## Add Files to Staging

```bash
git add .
git add filename.txt
```

---

## Commit Changes

```bash
git commit -m "Initial commit"
```

---

## Connect to GitHub

```bash
git remote add origin <repository-url>
```

---

## Push to GitHub

```bash
git push -u origin main
```

---

## Clone a Repository

```bash
git clone <repository-url>
```

---

## Pull Latest Changes

```bash
git pull origin main
```

---

## Branching

### Create a branch

```bash
git branch feature-branch
```

---

### Switch branch

```bash
git checkout feature-branch
```

---

### Create and switch in one command

```bash
git checkout -b feature-branch
```

---

## Merging

```bash
git checkout main
git merge feature-branch
```

---

## Viewing History

```bash
git log
```

---

# 🔁 Example Workflow

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin <repo-url>
git push -u origin main
```

---

# ⚠️ Common Mistakes

* Forgetting to add files before committing
* Writing unclear commit messages
* Pushing directly to main without branches
* Merge conflicts when working with others

---

# 🧠 What I Learned

Through this project I learned how to:

* Track changes using Git
* Stage and commit files
* Push code to GitHub
* Work with branches
* Merge changes safely
* Manage project history

---

# 🔮 Future Improvements

* Learn advanced Git workflows (Git Flow)
* Handle merge conflicts
* Use pull requests on GitHub
* Collaborate on team projects
* Integrate Git into CI/CD pipelines

---

# 🎯 Conclusion

Git is an essential tool for modern software development. Understanding Git allows developers to manage code efficiently, collaborate with others, and maintain a reliable history of their projects.

Mastering Git is a foundational step toward becoming a professional software engineer.
