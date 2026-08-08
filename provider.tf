terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    bucket = "bnsaws-remote-state"
    key    = "github-action"
    region = "us-east-1"
     use_lockfile = true
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}