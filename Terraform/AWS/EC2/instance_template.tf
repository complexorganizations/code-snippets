// Create a EC2 launch template
resource "aws_launch_template" "launch_template" {
  name = "launch_template"
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      volume_size           = 25
      volume_type           = "gp2"
      delete_on_termination = true
    }
  }
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }
  credit_specification {
    cpu_credits = "standard"
  }
  disable_api_termination = false
  ebs_optimized           = false
  elastic_gpu_specifications {
    type = "eg1.medium"
  }
  elastic_inference_accelerator {
    type = "eia.medium"
  }
  image_id                             = ""
  instance_initiated_shutdown_behavior = "stop"
  instance_market_options {
    market_type = "spot"
  }
  instance_type = "t2.micro"
  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
    instance_metadata_endpoint  = "enabled"
  }
  monitoring {
    enabled = true
  }
  network_interfaces {
    associate_public_ip_address = true
  }
}
