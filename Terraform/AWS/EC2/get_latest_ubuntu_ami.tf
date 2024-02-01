// Get the data on the latest ubuntu AMI.
data "aws_ami" "get_current_ubuntu_release" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

output "ubuntu_ami_id" {
  value = data.aws_ami.get_current_ubuntu_release.id
}
