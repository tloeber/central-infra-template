# Requires Terraform v0.13 or later
terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.52.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}

provider "aws" {
}

provider "tfe" {
}

provider "github" {
  owner = var.github_owner
  token = data.aws_secretsmanager_secret_version.github_PAT_version.secret_string
}
