terraform {
    required_version = "~> 1.1" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.1"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        profile = "default"
}

resource "aws_instance" "Raminfra" {
	ami = "ami-0c2b8ca1dad447f8a" 
	instance_type = "t2.micro"
}
