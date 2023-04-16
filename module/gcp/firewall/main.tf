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

resource "google_compute_firewall" "name" {
  name = var.name
  network = var.network

  allow {
    protocol = "tcp"
    ports = var.port
  }

  target_tags = var.target_tags
  source_ranges = var.source_ranges
}