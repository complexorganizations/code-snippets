# Create a EC2 placement group
resource "aws_placement_group" "placement_group" {
  name     = "example-placement-group"
  strategy = "cluster"
}
