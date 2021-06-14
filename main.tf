terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
  }
}
provider "aws" {
  region = "${var.aws-region}"
  profile = "myprofile"
  access_key = ""
  secret_key = ""
}