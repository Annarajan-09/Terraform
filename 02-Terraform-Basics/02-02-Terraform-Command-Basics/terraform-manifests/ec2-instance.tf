# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 4.65" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-west-2"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-06ce6bb40e50efe77" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
