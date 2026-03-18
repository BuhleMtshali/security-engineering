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

# 🧪 Mini Project: Branching & Merging Workflow

## 📌 Overview

On Day 13 I learned the fundamentals of **Git**, focusing on version control, branching, and merging.

As part of this project, I implemented a **mini workflow** where I:

* Created a new branch
* Made changes to the project
* Committed those changes
* Switched back to the main branch
* Merged the feature branch into `main`

This simulates a **real-world development workflow** used in teams.

---

# ⚙️ Tools Used

* Git (Command Line Interface)
* GitHub

---

# 🧠 Key Concepts

## 1️⃣ Version Control

```Git``` tracks changes in files over time, allowing developers to:

* Revisit previous versions
* Collaborate safely
* Maintain a history of changes

---

## 2️⃣ Branching

Branches allow developers to work on new features without affecting the main codebase.

* `main` → stable code
* `feature branch` → development work

---

## 3️⃣ Merging

Merging combines changes from one branch into another.

---

# 🧪 Mini Project: Branching & Merging Workflow

## Step 1: Check current branch

```bash
git status
git branch
```

---

## Step 2: Create and switch to a new branch

```bash
git checkout -b readme-feature
```

---

## Step 3: Make changes

Updated the `README.md` file with new content.

---

## Step 4: Stage and commit changes

```bash
git add .
git commit -m "created the readme"
```

---

## Step 5: Switch back to main branch

```bash
git checkout main
```

---

## Step 6: Merge the feature branch into main

```bash
git merge readme-feature
```

---

## Step 7: Push changes to GitHub

```bash
git push origin main
```

---

## Step 8: Delete branch (cleanup)

```bash
git branch -d readme-feature
```

---

# ⚠️ Issue Encountered

While working on this project, I initially attempted to merge the branch while still inside it:

```bash
git merge readme-feature
```

This resulted in:

```
Already up to date.
```

### 🔍 Explanation

Git cannot merge a branch into itself.
To merge correctly, you must:

1. Switch to the target branch (`main`)
2. Then merge the feature branch

---

# 🔁 Correct Workflow Summary

```bash
git checkout -b readme-feature
# make changes
git add .
git commit -m "created the readme"

git checkout main
git merge readme-feature
git push origin main
```

---

# 🧠 What I Learned

Through this project I learned how to:

* Create and manage branches
* Commit changes in isolation
* Merge branches into main
* Understand Git workflow in practice
* Identify and fix common Git mistakes

---

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
