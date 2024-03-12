# todo: create module for this
resource "github_repository" "central-infra-template" {
  name               = "central-infra-template"
  description        = "Template for centralized infrastructure"
  visibility         = "public"
  is_template        = true
  archive_on_destroy = true

  # Features to enable
  has_discussions = true
  has_projects    = true
  has_issues      = true
  has_wiki        = true

  # Branch rules
  delete_branch_on_merge = true

  # Security
  # -------
  vulnerability_alerts = true
  # Don't call the vulnerability alerts endpoint during read, so the resource can also be used without admin permissions
  ignore_vulnerability_alerts_during_read = true
  security_and_analysis {
    # # This can only be set for private repos (but it's on by default for public repos)
    # advanced_security {
    #   # Enable advanced security features
    #   status = "enabled"
    # }
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}
