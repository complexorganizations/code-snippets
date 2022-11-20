# Create a elasticache cluster. (redis)
resource "aws_elasticache_cluster" "redis-elasticache-cluster" {
  cluster_id                 = "suiqa5d83igszdff72xg2ub94sia24o"
  engine                     = "redis"
  auto_minor_version_upgrade = true
  az_mode                    = "single-az"
  node_type                  = "cache.t2.micro"
  num_cache_nodes            = 1
  parameter_group_name       = "default.redis6.x"
  engine_version             = "6.2"
  port                       = 6379
  tags = {
    # {project-name}-elasticache-redis-{0}-{us-east-1a}
    Name = "code-snippets-elasticache-redis-0-us-east-1a"
  }
}
