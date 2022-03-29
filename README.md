# About Terraspace

[Concepts](https://terraspace.cloud/docs/intro/concepts/)

Codes are organized to these main folders. (Reference: [Project Structure](https://terraspace.cloud/docs/intro/structure/))

- `app/modules`
- `app/stacks`
- `config/terraform`

Override things in these folders as necessary.

# How to use this template

Using [Terraspace](https://terraspace.cloud/) to provision infrastructure on AWS.

Using VS Code Remote Containers.

## Step 1: Setup VS Code

- Install VS Code Remote Container Extensions

## Step 2: Prepare AWS credentials

- Create new IAM User
- Grant some IAM Roles. For examples: `IAMFullAccess`, `EC2FullAccess`, `S3FullAccess`
- Generate new `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`
- Create File: `.env` based on `.env.example`

## Step 3: Create terraform.tfvars

- Copy & Paste `infra/config/terraform/terraform.tfvars.example`
- Create `infra/config/terraform/terraform.tfvars`
- Set your desired value in `terraform.tfvars`

## Step 4: Execute Terraspace Commands

For Example: Create infrastructure for a environment `demo`

```
Ctrl + Shift + P > Remote-Containers: Open Folder in Container
```

```
cd infra
bundle install
TS_ENV=demo terraspace up demo
TS_ENV=demo terraspace down demo
```

**MY NOTES:**

- `infra/config/terraform/terraform.tfvars`: this is a global tfvars for all Terraspace stacks and this file's content will change depends on the person who use this repository. Be default, this file will be ignored it in `.gitignore`

# GitHub Actions Workflows

- Run `./scripts/setup.sh` to install GitHub CLI and authorize. We use GitHub CLI to manage GitHub Action Secrets
- Run `./scripts/set_secrets.sh` to register GitHub Actions Secrets by reading `.env`, `infra/config/terraform/terraform.tfvars`

| Workflow     | Description                                                 |
| ------------ | ----------------------------------------------------------- |
| plan.yaml    | Run Terraspace validate & plan to confirm Terraform Modules |
| apply.yaml   | Apply Infrastructure changes without approval               |
| destroy.yaml | Destroy Infrastructure without approval                     |
