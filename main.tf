terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Configure  EC2 instance with AMI
resource "aws_instance" "terraform-first-instance" {
    ami           = "ami-0130c003230bce852"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
