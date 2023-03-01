resource "aws_devicefarm_project" "devicefarm_project" {
  name                        = "devicefarm_project"
  default_job_timeout_minutes = 60
}
