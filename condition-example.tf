resource "aws_instance" "sample" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = var.TYPE == null ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"
  tags                   = {
    Name                 = "Sample"
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "TYPE" {
  default = null
}
