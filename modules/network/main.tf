resource "aws_vpc" "bbg-vpc" {
  cidr_block = "${var.network_cidr}"
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc-name}"
  }
}

resource "aws_subnet" "bbg-subnet" {
  vpc_id = "${aws_vpc.bbg-vpc.id}"
  cidr_block = "${var.subnet_cidr}"
  availability_zone = "${var.availability_zone}"
  tags = {
    Name = "${var.vpc-subnet-name}"
  }
}
