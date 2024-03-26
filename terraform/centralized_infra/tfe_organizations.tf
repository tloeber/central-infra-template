resource "tfe_organization" "my-org" {
  name  = var.organization_name
  email = var.organization_email
}

locals {
  # todo: share with version constraint for workspaces
  terraform_version = "~> 1.6.6"
}

resource "tfe_workspace" "workspace" {
  name              = "central-infra"
  organization      = tfe_organization.my-org.name
  terraform_version = local.terraform_version
  queue_all_runs    = false
  # vcs_repo {
  #   branch = "main"
  #   identifier     = "my-org-name/vcs-repository" # todo: define repo as TF and use output
  #   oauth_token_id = tfe_oauth_client.github.oauth_token_id
  # }
}

resource "tfe_workspace" "databricks-test" {
  name              = "MLOps-template-dev"
  organization      = tfe_organization.my-org.name
  queue_all_runs    = false
  terraform_version = local.terraform_version
}
