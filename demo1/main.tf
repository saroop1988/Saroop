terraform {
   required providers  {
    aws = {
    source = "hashicorp/aws"
      version = "~> 3.27"
    }
   }
  
  required version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "us-east-2"
}  

resource "aws_instance" "app_server" {
 ami = "ami-0443305dabd4be2bc"
  instance_type = "t2.micro"
  
  tags = {
    name = "Saroop"
  }
}

