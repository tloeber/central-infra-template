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
