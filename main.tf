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
  region  = "eu-north-1"
  access_key ="AKIAST3TG3NXQTA7NSW3"
  secret_key ="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"

}

resource "aws_instance" "app_server" {
  ami           = "ami-0331ac5c6d19b3f74"
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
