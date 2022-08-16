# configure aws provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# stores the terraform state in an s3 bucket
terraform {
  backend "s3" {
    bucket = "joseto-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}