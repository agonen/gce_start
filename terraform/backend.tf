provider "google" {
  project = "getbooks-195414"
  region  = "us-central1"

}

# Using a single workspace:

terraform {
  required_version = "~> 0.12.0"

  backend "remote" {}
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}
