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
   
}

resource "aws_vpc" "myfirstvpc" {
  cidr_block = "20.0.0.0/16"
}