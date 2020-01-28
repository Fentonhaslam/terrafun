terraform {
  required_version = "0.12.20"
}

provider "aws" {
  access_key = "AKIATHWLOLNHYBU22FXZ"
  secret_key = ""
  region     = "eu-west-2"
}

module "consul" {
  source      = "hashicorp/consul/aws"
  num_servers = "3"
}

output "consul_server_asg_name" {
  value = "${module.consul.asg_name_servers}"
}