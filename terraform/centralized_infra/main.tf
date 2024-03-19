module "repo" {
  source      = "./modules/github-repo"
  name        = "central-infra-template"
  description = "Template for centralized infrastructure"
  visibility  = "public"
  is_template = true
}
