# Terrafun

Building Infrastructure using Terraform.

# What is Terraform

Terraform the provision and mangement of any cloud, infrastructure, or service in code.
This introduction will be focussing on the AWS provider but Terraform can be written for many more.

The smallest unit of Terraform is the Terraform file, typically called main.tf.
This file contains the description of your infrastructure. Nearly all AWS objects and AWS CLI commands are covered (having better coverage than AWS CloudFormation).

# How to use Terraform?

There is a set of files used to describe infrastructure in Terraform, simply known as Terraform configuration. In the example.tf we write the first config to launch a single AWS EC2 instance.

```
provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
```
