provider "google" {
  project     = var.project
  region      = var.region
  credentials = file("credentials.json")
}

module "storage_bucket_objects" {
  source      = "./storage_bucket_objects"
  bucket_name = var.bucket_name
}

terraform {
  cloud {
    organization = var.organization

    workspaces {
      name = var.workspace
    }
  }
}