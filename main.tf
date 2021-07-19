provider "aws" {
  version = "< 2"
  region  = "${var.region}"
}

resource "aws_vpc" "bbg_vpc" {
  cidr_block           = "${var.network_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "BBG VPC"
  }
}

resource "aws_subnet" "bbg_subnet" {
  vpc_id            = "${aws_vpc.bbg_vpc.id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.availability_zone}"

  tags {
    Name = "BBG Subnet 1"
  }
}

resource "aws_instance" "bbg-and-eci-rock-CHANDRA" {
  ami           = "${var.ami}"
  instance_type = "${var.flavor}"
  key_name = "${var.keyname}"
  subnet_id     = "${aws_subnet.bbg_subnet.id}"
  tags {
    Name = "bbg-and-eci-rock-CHANDRA"
  }
}
