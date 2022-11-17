terraform {
  backend "gcs" {
    bucket = "terraform-state-bucket-automation"
    prefix = "image-creation/"
  }
}