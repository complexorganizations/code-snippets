// Create google cloud network
resource "google_compute_network" "vpc_network" {
  name                            = "terraform-network"
  auto_create_subnetworks         = true
  delete_default_routes_on_create = false
  mtu                             = 1420
  routing_mode                    = "REGIONAL"
}
