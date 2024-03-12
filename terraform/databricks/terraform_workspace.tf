resource "tfe_workspace" "workspace" {
  name        = "central-infra-databricks"
  description = "central (non-project-specific) infra for databricks, such as workspaces, etc"
  # todo: import from central-infra workspace
  organization = var.organization_name
  vcs_repo {
    github_app_installation_id = var.github_app_installation_id
    identifier                 = "tloeber/central-infra-template"
    ingress_submodules         = false
  }
}
