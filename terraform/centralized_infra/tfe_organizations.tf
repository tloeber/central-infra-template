resource "tfe_organization" "my-org" {
  name  = var.organization_name
  email = var.organization_email
}

resource "tfe_workspace" "workspace" {
  name           = "central-infra"
  organization   = tfe_organization.my-org.name
  queue_all_runs = false
  # vcs_repo {
  #   branch = "main"
  #   identifier     = "my-org-name/vcs-repository" # todo: define repo as TF and use output
  #   oauth_token_id = tfe_oauth_client.github.oauth_token_id
  # }
}
