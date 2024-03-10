resource "tfe_organization" "my-org" {
  name  = var.organization_name
  email = var.organization_email
}

resource "tfe_workspace" "centralized-infra" {
  name         = "centralized-infra"
  organization = tfe_organization.my-org.name
  # tag_names    = ["test", "app"]
}
