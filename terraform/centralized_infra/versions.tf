# Requires Terraform v0.13 or later
terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.52.0"
    }
  }
}

provider "tfe" {
}
