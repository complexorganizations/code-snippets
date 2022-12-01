# Create a new ECR repository
resource "aws_ecr_repository" "ecr_repo" {
  name = "ecr-repo"
  encryption_configuration {
    encryption_type = "AES256"
  }
  force_delete         = false
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Name = "ecr-repo"
  }
}
