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