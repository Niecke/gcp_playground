terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }

  backend "gcs" {
    bucket = "gcp-playground-443120-tf-state"
  }
}

provider "google" {
  credentials = "./gcloud.json"
  project     = "gcp-playground"
  region      = "us-central1"
  zone        = "us-central1-c"
}


resource "google_compute_network" "vpc_network" {
  name = "main"
}
