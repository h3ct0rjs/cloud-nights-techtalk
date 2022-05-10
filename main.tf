terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
}
variable "profile" {
  description = "IAM User,keys to deploy the cloud resources to amazon."
  type = string
}

variable "region" {
  description = "Region to deploy cloud resources."
  type = string
}

provider "aws" {
  profile = var.profile
  region  = var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}
