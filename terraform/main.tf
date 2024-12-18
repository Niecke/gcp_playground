terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.14.1"
    }
  }

  backend "gcs" {
    bucket = "gcp-playground-443120-tf-state"
  }
}

provider "google" {
  project = "gcp-playground-443120"
  region  = "us-central1"
  zone    = "us-central1-c"
}


resource "google_compute_network" "vpc_network" {
  name = "main"
}
