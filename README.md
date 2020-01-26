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
The resource block defines a resource that exists within the infrasctructure.
By using Terraform to change infrastructure, you can version control not only your configurations but also your state so you can see how the infrastructure evolved over time.

# Initialization

First command :
```
terraform init
```
Which initilizes local settings and data taht will be used by subsequent commands.
The terraform init command will automatically download and install any Provider binary for the providers in use within the configuration, which in this case is just the aws provider.

<bold>Apply changes<bold>


# Useful commands

```
terraform fmt
```
Enables standarization which automatically updates confi in the current directoru for easy readability.

```
terraform validate
```
```
terraform show
```
can inspect the current state
```
terraform state <subcommand>
```
a built in command called terraform state which is used for advanced state management. In cases where a user would need to modify the state file by finding resources in the terraform.tfstate file with terraform state list. This will give us a list of resources as addresses and resource IDs that we can then modify.

