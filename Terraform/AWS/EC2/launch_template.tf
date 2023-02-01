// Create a aws launch template
resource "aws_launch_template" "launch_template" {
  name = "launch_template"
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      volume_size           = 8
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
  disable_api_stop        = false
  ebs_optimized           = false
  elastic_gpu_specifications {
    type = "eg1.medium"
  }
  elastic_inference_accelerator {
    type = "eia.medium"
  }
  instance_initiated_shutdown_behavior = "terminate"
  instance_type                        = "t2.micro"
  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "optional"
    http_put_response_hop_limit = 1
  }
  monitoring {
    enabled = true
  }
  network_interfaces {
    associate_public_ip_address = true
    delete_on_termination       = true
  }
  placement {
    availability_zone = "us-east-1a"
  }
}
