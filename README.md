# Git Hooks 

## Setup

### Local Project Setup
Copy hooks folder contents to the `.git/hooks` folder inside your project directory.

### Global Setup
To apply Git hooks globally, clone this repository and configure Git to use it:
```bash
git clone https://github.com/nsavinda/git-hooks.git
git config --global core.hooksPath $(pwd)/git-hooks/hooks
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
To change maximum file size limit, use the following command:
```bash
# To change global limit
git config --global git-hooks.maxFileSize 1024 # 1MB

# Only for now
GIT_MAX_FILE_SIZE=1024 git commit -m "Your commit message"
```

