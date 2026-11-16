terraform {
  backend "s3" {
    bucket = "terraform-backend-file-bkt-03"
    key    = "prod/terraform.tfstate"
    region = "ap-south-1"
  }
}

