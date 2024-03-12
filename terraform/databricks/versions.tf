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
}

provider "databricks" {
  # Configuration options
}
