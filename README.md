# Git Hooks 

## Setup

### Local Project Setup
Copy the hooks to the `.git/hooks` folder inside your project directory.

### Global Setup
To apply Git hooks globally, place the hook scripts in a designated directory and configure Git to use it:
```bash
git config --global core.hooksPath /path/to/global/hooks
```

---

## Pre-commit Hook

### Purpose
- Prevent accidental commits of `.env` files to protect sensitive data.
- Prevent large files from being committed.

### Usage

#### Default Behavior
The pre-commit hook blocks any commit containing a `.env` file or a file larger than 5MB.


#### Bypassing the Check
To explicitly allow commits with `.env` files, use the following command:
```bash
GIT_ALLOW_ENV=1 git commit -m "Your commit message"
```

To allow commits with large files, use the following command:
```bash
GIT_ALLOW_LARGE_FILES=1 git commit -m "Your commit message"
```
