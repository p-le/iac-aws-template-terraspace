# How to use this template

Use Terraspace Docker Image + VS Code Remote Container Extension

## Step 1: Setup VS Code

- Install Remote Container Extension
  Run script: `./scripts/setup.sh` to install `tfenv` and GitHub CLI
- Run: `gh auth login` to authorize GitHub CLI

## Step 2: Prepare AWS credentials

- Create new IAM User
- Grant required IAM Roles: EC2FullAccess, S3FullAccess, IAMFullAccess, DynamoDBFullAccess
- Generate new `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`

## Step 3: Create S3 Bucket for Remote State

## Step 4: Create Required Files

- Create File: `.env` based on `.env`
- Create File: `config.s3.tfbackend` based on `config.s3.tfbackend.example`
- Create File: `terraform.tfvars` based on `terraform.tfvars.example`

## Step 4: Execute Terraform Commands

```
./scripts/terraform.sh init
./scripts/terraform.sh plan
./scripts/terraform.sh apply
./scripts/terraform.sh destroy
```

## Step 5: Setup GitHub Actions Secrets

Run `./scripts/set_secrets.sh` to register new GitHub Actions Secrets using GitHub CLI
