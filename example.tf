provider "aws" {
  profile    = "default"
  region     = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0e49551fc78560451"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example.id
}
