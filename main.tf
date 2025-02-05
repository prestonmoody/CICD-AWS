provider "aws" {
  region = "us-east-1" # Update this as per your AWS region
}

resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "prestontest123"
}

resource "aws_instance" "my_test_instance" {
  ami           = "ami-0c614dee691cbbf37"
  instance_type = "t2.micro"
  tags = {
    Name = "MyTestinstance"
  }
}

