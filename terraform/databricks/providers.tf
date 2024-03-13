# Requires Terraform v0.13 or later
terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.52.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.40.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "1.38.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

provider "databricks" {
  # New *multi-workspace* (E2) architecture.
  # (`provider = databricks.mws` is in contrast to `provider = databricks.created_workspace`)
  alias         = "mws"
  host          = "https://accounts.cloud.databricks.com"
  account_id    = var.account_id
  client_id     = var.db_client_id
  client_secret = var.db_client_secret
}
