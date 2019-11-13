terraform {
  required_version = "~>0.10"
  backend "s3" {
    encrypt = "true"
    bucket  = "tarraform-backend-nadyusha"
    key     = "ourdatastore/terraform.tfstate"
    region  = "us-east-1"
  }
}