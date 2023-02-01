terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-07e514b47e458d529"
  instance_type = "t2.micro"

  tags = {
    Name = "Welcome"
  }
}

output "ec2_instance_ip" {
  value = aws_instance.app_server.public_ip
}
