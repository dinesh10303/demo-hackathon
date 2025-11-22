# Create VPC
resource "google_compute_network" "vpc" {
  name = "demo-vpc"
  auto_create_subnetworks = false
}

# Public Subnet
resource "google_compute_subnetwork" "public" {
  name          = "demo-public-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-east1"
  network       = google_compute_network.vpc.id
  private_ip_google_access = true
}

# Private Subnet
resource "google_compute_subnetwork" "private" {
  name          = "demo-private-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-east1"
  network       = google_compute_network.vpc.id
  private_ip_google_access = false
}
