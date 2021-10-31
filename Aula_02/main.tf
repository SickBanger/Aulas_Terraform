provider "aws" {

  region = "região mais próxima"
}

resource "aws_instance" "web" {
  ami           = ""
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}