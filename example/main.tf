provider "aws" {
  region = "us-east-1"
}

module "vpc" {
    source = "../vpc/"
    name = "test"
    cidr = "10.32.0.0/16"
    private_subnets = ["10.32.0.0/24","10.32.1.0/24"]
    public_subnets = ["10.32.10.0/24","10.32.11.0/24"]
    availability_zones = ["us-east-1a","us-east-1b"]
}