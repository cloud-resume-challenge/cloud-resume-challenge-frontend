provider "google" {
  project     = var.project
  region      = var.region
  credentials = base64decode(var.credentials)
}

module "storage_bucket_objects" {
  source      = "./storage_bucket_objects"
  bucket_name = var.bucket_name
}

# changes
terraform {
  cloud {
    organization = "austinbrees"

    workspaces {
      name = "ahb-cloud-resume-challenge"
    }
  }
}
