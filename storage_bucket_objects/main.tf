data "google_storage_bucket" "existing" {
  name = var.bucket_name
}

resource "google_storage_bucket_object" "object" {
  name   = "index.html"
  bucket = var.bucket_name
  source = "./files/index.html"
}
resource "google_storage_bucket_object" "object2" {
  name   = "styles.css"
  bucket = var.bucket_name
  source = "./files/styles.css"
}
resource "google_storage_bucket_object" "object3" {
  name   = "app.js"
  bucket = var.bucket_name
  source = "./files/app.js"
}


resource "google_storage_object_access_control" "public_object" {
  object = google_storage_bucket_object.object.name
  bucket = var.bucket_name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_object_access_control" "public_object2" {
  object = google_storage_bucket_object.object2.name
  bucket = var.bucket_name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_object_access_control" "public_object3" {
  object = google_storage_bucket_object.object3.name
  bucket = var.bucket_name
  role   = "READER"
  entity = "allUsers"
}

