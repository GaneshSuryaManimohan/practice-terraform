terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.86.0"
    }
  }
  backend "s3" {
    bucket = "daws25s-remote-state-s3"
    key    = "daws25s-dynamic-test"
    region = "us-east-1"
    dynamodb_table = "remote-state-locking"
  }
}
#provide authentication here:
provider "aws" {
  region = "us-east-1"
}