variable "name" {
  description = "The name of the repository"
  type        = string
}
variable "description" {
  description = "The description of the repository"
  type        = string
}
variable "visibility" {
  description = "The visibility of the repository"
  type        = string
}
variable "is_template" {
  description = "Whether the repository is a template"
  type        = bool
}
