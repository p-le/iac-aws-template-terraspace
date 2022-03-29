# About Terraspace

### New concepts

- Stack
- Tfvars Layering

### Conventions over Configuration

Codes are organized to these main folders. (Reference: [Project Structure](https://terraspace.cloud/docs/intro/structure/))

- `app/modules`
- `app/stacks`
- `config/terraform`

Override things in these folders as necessary.

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
TS_ENV=demo terraspace up demo
TS_ENV=demo terraspace down demo
```

# GitHub Actions Workflows

- Run `./scripts/setup.sh` to install GitHub CLI and authorize
- Run `./scripts/set_secrets.sh` to register new GitHub Actions Secrets by reading `.env` f
