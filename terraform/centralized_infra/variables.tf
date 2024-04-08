# Terraform Cloud
# ===============

variable "organization_name" {
  description = "The name of the TF organization"
  type        = string
}

variable "organization_email" {
  description = "The email of the TF organization"
  type        = string
}


# Github
# ======
variable "github_owner" {
  description = "The owner of the GitHub repository"
  type        = string
}

variable "secret_arn_github_PAT" {
  description = "The ARN of the secret containing the GitHub PAT for the repository"
  type        = string
}
