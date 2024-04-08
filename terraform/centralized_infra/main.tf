module "repo" {
  source           = "../../../terraform-github-repo"
  repo_name        = "central-infra-template"
  repo_description = "Template for centralized infrastructure"
  repo_visibility  = "public"
  is_template      = true

  aws_region            = "us-east-1"
  secret_arn_github_PAT = var.secret_arn_github_PAT
}
