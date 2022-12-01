resource "aws_dax_cluster" "dax_cluster" {
  # {project-name}-dax-cluster-{0}-{us-east-1}
  cluster_name       = "dax-cluster-0"
  node_type          = "dax.t2.small"
  replication_factor = 3
  iam_role_arn       = aws_iam_role.dax_cluster_iam_role.arn
  server_side_encryption {
    enabled = true
  }
}

resource "aws_iam_role" "dax_cluster_iam_role" {
  # {project-name}-dax-cluster-iam-role-{0}-{us-east-1}
  name = "dax-cluster-iam-role-0"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "Service" : "dax.amazonaws.com"
        },
        "Effect" : "Allow",
        "Sid" : ""
      }
    ]
  })
}
