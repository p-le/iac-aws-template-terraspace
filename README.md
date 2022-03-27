# How to use this template

Using Terraspace to provision infrastructure on AWS.

Using VS Code Remote Containers.

## Step 1: Setup VS Code

- Install VS Code Remote Container Extensions

## Step 2: Prepare AWS credentials

- Create new IAM User
- Grant some IAM Roles. For examples: `IAMFullAccess`, `EC2FullAccess`, `S3FullAccess`
- Generate new `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`
- Create File: `.env` based on `.env.example`

## Step 4: Execute Terraspace Commands

```
cd infra
bundle install
terraspace up demo -y
terraspace down demo -y
```

# GitHub Actions Workflows

- Run `./scripts/setup.sh` to install GitHub CLI and authorize
- Run `./scripts/set_secrets.sh` to register new GitHub Actions Secrets by reading `.env` f
