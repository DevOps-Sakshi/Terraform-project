provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "s3-bucket" {
    bucket = "aws-new-s3-terraform"

  
}

resource "aws_instance" "instance" {
    ami = "ami-01a00762f46d584a1"
    instance_type = "t3.micro"
    tags = {
      "Name" = "Example"
    }  
}

output "aws_public_ip" {
    value = aws_instance.instance.public_ip
}
