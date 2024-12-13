# Git Hooks

## Pre-commit

### Include

 - Check .env file commits for protect sensitive data


### Usage
    
To ignore .env check, use the following command:
```bash
GIT_ALLOW_ENV=1 git commit -m "commit message"
```
