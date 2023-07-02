terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
    
  }
#   required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  profile = "personal"
}

resource "aws_instance" "app_server" {
  ami           = "ami-06b09bfacae1453cb"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}