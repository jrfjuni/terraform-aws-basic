terraform {
  backend "s3" {
      # region = "BUCKET_REGION"
      # bucket = "BUCKET_NAME"
      encrypt = true
      key = "terraform.tfstate"
  }
}