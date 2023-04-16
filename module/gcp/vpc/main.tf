terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.61.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials
}

resource "google_compute_network" "default" {
  name                    = var.name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default" {
  count         = length(var.subnet_name)
  name          = var.subnet_name[count.index]
  ip_cidr_range = var.ip_cidr_range[count.index]
  region        = var.subnet_region[count.index]
  network       = google_compute_network.default.id
}
