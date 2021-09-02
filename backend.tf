terraform {
  backend "s3" {
      region = "us-east-2"
      bucket = "{YOUR_BUCKET_NAME}"
      encrypt = true
      key = "terraform.tfstate"
    
  }
}