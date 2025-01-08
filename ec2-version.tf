terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key=""
    secret_key="" 
}

resource "aws_instance" "web" {
  ami           = "ami-09ec59ede75ed2db7"
  instance_type = "t3.micro"

  tags = {
    Name = "ec2machine"
  }
}