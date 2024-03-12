resource "aws_secretsmanager_secret" "github_PAT" {
  name        = "github_PAT"
  description = "For giving TF Cloud access to GitHub"
}

# data "aws_iam_policy_document" "example" {
#   statement {
#     sid    = "EnableAnotherAWSAccountToReadTheSecret"
#     effect = "Allow"

#     principals {
#       type        = "AWS"
#       identifiers = ["arn:aws:iam::123456789012:root"]
#     }

#     actions   = ["secretsmanager:GetSecretValue"]
#     resources = ["*"]
#   }
# }

# resource "aws_secretsmanager_secret_policy" "example" {
#   secret_arn = aws_secretsmanager_secret.example.arn
#   policy     = data.aws_iam_policy_document.example.json
# }

# For *retrieving* secret
# Note: need to set manually after creating secret above, then re-run tf apply.
data "aws_secretsmanager_secret_version" "github_PAT_version" {
  secret_id = resource.aws_secretsmanager_secret.github_PAT.id
}
