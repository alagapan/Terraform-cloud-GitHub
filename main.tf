terraform {
    required_version = "~> 1.1.4" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.1"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        # profile = "default"
}

resource "aws_instance" "terraform-infra" {
	ami = "ami-033b95fb8079dc481" 
	instance_type = "t2.micro"
}
