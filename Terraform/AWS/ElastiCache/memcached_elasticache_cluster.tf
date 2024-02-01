// Create a elasticache cluster. (memcached)
resource "aws_elasticache_cluster" "memcached_elasticache_cluster" {
  cluster_id      = "ephnpa5oup5nig3axyzbn3ik3cj8z8tk"
  engine          = "memcached"
  node_type       = "cache.t2.micro"
  port            = 11211
  num_cache_nodes = 1
  tags = {
    // {project-name}-elasticache-memcached-{0}-{us-east-1a}
    Name = "code-snippets-elasticache-memcached-0-us-east-1a"
  }
}
