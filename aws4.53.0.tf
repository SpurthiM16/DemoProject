terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.53.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "~/.aws/config"
}

resource "aws_instance" "app_server" {
  ami           = "ami-07e514b47e458d529"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0aa872805a96c30af"]
  subnet_id = "subnet-0da722220074863a9"

  tags = {
    Name = "Welcome"
  }
}

output "ec2_instance_ip" {
  value = aws_instance.app_server.public_ip
}