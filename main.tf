provider "google" {
  project     = var.project
  region      = var.region
  credentials = jsondecode(base64decode(var.credentials))
}

module "storage_bucket_objects" {
  source      = "./storage_bucket_objects"
  bucket_name = var.bucket_name
}

terraform {
  cloud {
    organization = "austinbrees"

    workspaces {
      name = "ahb-cloud-resume-challenge"
    }
  }
}
