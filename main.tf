provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./modules/network"
  availability_zone = "us-east-1a"
  vpc-name = "BBG-VPC"
  vpc-subnet-name= "BBG Subnet 1"
}

module "compute" {
  source = "./modules/compute"
  ami = "ami-0dc2d3e4c0f9ebd18"
  flavor = "t2.micro"
  ec2-name = "bbg-and-eci-rock-CHANDRA"
  subnet_id = "${module.network.subnet_id}" 
}
