provider "aws" {
  profile    = "default"
  region     = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0089b31e09ac3fffc"
  instance_type = "t2.micro"
}
