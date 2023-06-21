variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}
variable "project" {
  description = "The project ID to deploy to"
  type        = string
}
variable "region" {
  description = "The region to deploy to"
  type        = string
}
variable "organization" {
  description = "The organization ID to deploy to"
  type        = string
}
variable "workspace" {
  description = "The workspace to deploy to"
  type        = string
}