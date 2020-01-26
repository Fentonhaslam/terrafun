provider "aws" {
  profile    = "default"
  region     = "eu-west-2"
}

# New resource for the S3 bucket our application will use.
resource "aws_s3_bucket" "example" {
  # NOTE: S3 bucket names must be unique across _all_ AWS accounts, so
  # this name must be changed before applying this example to avoid naming
  # conflicts.
  bucket = "terrafun-getting-started-guide"
  acl    = "private"
}

resource "aws_instance" "example" {
  ami           = "ami-0e49551fc78560451"
  instance_type = "t2.micro"
  # Tells Terraform that this EC2 instance must be created only after the
  # S3 bucket has been created.
  depends_on = [aws_s3_bucket.example]
}

resource "aws_instance" "another" {
  ami           = "ami-0089b31e09ac3fffc"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example.id
}

