terraform {
  required_version = "0.14.4"

  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.23.0"
    }
  }
}

 
provider "aws" {

  region = "região mais próxima"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "nome único da Bucket"
  acl    = "private"


  tags = {
    Name = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}