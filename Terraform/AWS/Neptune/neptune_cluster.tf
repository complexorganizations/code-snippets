// Create a neptune cluster.
resource "aws_neptune_cluster" "neptune_cluster" {
  cluster_identifier                  = "code-snippets-neptune-0-us-east-1"
  engine                              = "neptune"
  backup_retention_period             = 7
  preferred_backup_window             = "07:00-09:00"
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  apply_immediately                   = true
  storage_encrypted                   = true
  enable_cloudwatch_logs_exports      = ["audit"]
  tags = {
    // {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}

// Create a neptune cluster instance.
resource "aws_neptune_cluster_instance" "neptune_cluster_instance" {
  identifier                   = "code-snippets-neptune-0-us-east-1"
  cluster_identifier           = aws_neptune_cluster.neptune_cluster.id
  instance_class               = "db.r5.large"
  apply_immediately            = true
  auto_minor_version_upgrade   = true
  preferred_maintenance_window = "sun:03:00-sun:04:00"
  tags = {
    // {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}

// Create a neptune cluster parameter group.
resource "aws_neptune_cluster_parameter_group" "neptune_cluster_parameter_group" {
  name        = "code-snippets-neptune-0-us-east-1"
  family      = "neptune1"
  description = "code-snippets-neptune-0-us-east-1"
  parameter {
    name  = "neptune_query_timeout"
    value = "120000"
  }
  tags = {
    // {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}

// Create a neptune cluster snapshot.
resource "aws_neptune_cluster_snapshot" "neptune_cluster_snapshot" {
  cluster_identifier             = aws_neptune_cluster.neptune_cluster.id
  db_cluster_snapshot_identifier = "code-snippets-neptune-0-us-east-1"
  tags = {
    // {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}

// Create a neptune event subscription.
resource "aws_neptune_event_subscription" "neptune_event_subscription" {
  name        = "code-snippets-neptune-0-us-east-1"
  sns_topic   = aws_sns_topic.sns_topic.arn
  source_type = "db-cluster"
  source_ids  = [aws_neptune_cluster.neptune_cluster.id]
  tags = {
    // {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}

// Create a neptune global cluster.
resource "aws_neptune_global_cluster" "neptune_global_cluster" {
  global_cluster_identifier = "code-snippets-neptune-0-us-east-1"
  engine                    = "neptune"
  engine_version            = ""
  database_name             = ""
  storage_encrypted         = true
  deletion_protection       = false
  tags = {
    // {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}

// Create a neptune parameter group.
resource "aws_neptune_parameter_group" "neptune_parameter_group" {
  name        = "code-snippets-neptune-0-us-east-1"
  family      = "neptune1"
  description = "code-snippets-neptune-0-us-east-1"
  parameter {
    name  = "neptune_query_timeout"
    value = "120000"
  }
  tags = {
    // {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}

// Create a neptune subnet group.
resource "aws_neptune_subnet_group" "neptune_subnet_group" {
  name       = "code-snippets-neptune-0-us-east-1"
  subnet_ids = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]
  tags = {
    // {project-name}-neptune-{0}-{us-east-1}
    Name = "code-snippets-neptune-0-us-east-1"
  }
}