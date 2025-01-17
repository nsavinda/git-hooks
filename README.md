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

### Using the Installation Script

To set up the hooks globally, run the following command:
```bash
chmod +x install.sh
./install.sh
```


### Remove Global Setup
To remove the global setup, run the following command:
```bash
git config --global --unset core.hooksPath
```



---

## Pre-commit Hook

### Purpose
- Prevent accidental commits of secret files to protect sensitive data.
- Prevent large files from being committed.

### Usage

#### Default Behavior
The pre-commit hook blocks any commit containing a predefined list of secret files or a file larger than 5MB.


#### Bypassing the Check

To explicitly allow commits with secret files, use the following command:
```bash
GIT_ALLOW_SECRET_FILES=1 git commit -m "Your commit message"
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

### Other Usage

#### Preventing DS_Store Files

To prevent committing `.DS_Store` files, use the following command:
```bash
git config --global git-hooks.preventDSStore 1
```
To disable this feature, use the following command:
```bash
git config --global --unset git-hooks.preventDSStore
```

#### Adding More Secret File Names

To add more secret file names to the `SECRET_FILE_NAMES` array in `hooks/hooks.conf`, open the `hooks/hooks.conf` file and add the new secret file names to the array. For example:
```bash
SECRET_FILE_NAMES=(".env"
"private.key"
"private.pem"
"new_secret_file"
)
```
