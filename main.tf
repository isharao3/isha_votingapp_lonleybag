terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"  
}


resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
