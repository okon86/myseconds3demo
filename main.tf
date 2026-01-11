terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ca-central-1"
}

# Create a VPC
resource "aws_vpc" "demovpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_s3_bucket" "s3demo2026" {
  bucket = "mytf-demo2026-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}