resource "tfe_organization" "my-org" {
  name  = var.organization_name
  email = var.organization_email
}

# resource "tfe_oauth_client" "github" {
#   organization     = tfe_organization.my-org.name
#   api_url          = "https://api.github.com"
#   http_url         = "https://github.com"
#   oauth_token      = data.aws_secretsmanager_secret_version.github_PAT_version.secret_string
#   service_provider = "github"
# }

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
