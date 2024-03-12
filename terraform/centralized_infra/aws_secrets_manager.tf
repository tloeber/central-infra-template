resource "aws_secretsmanager_secret" "github_oauth_token" {
  name        = "github_oauth_token"
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
data "aws_secretsmanager_secret_version" "github_oauth_token_version" {
  secret_id = resource.aws_secretsmanager_secret.github_oauth_token.id
}
