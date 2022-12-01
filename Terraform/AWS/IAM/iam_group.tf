# Create a IAM group.
resource "aws_iam_group" "iam_group" {
  name = "developers"
  path = "/users/"
}
