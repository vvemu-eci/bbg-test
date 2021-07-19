variable network_cidr {
  default = "192.168.100.0/24"
}

variable subnet_cidr {
  default = "192.168.100.0/24"
}

variable availability_zone {
  default = "us-east-1a"
}

variable vpc-name {
 description = "Name of the VPC"
 type = string
}

variable vpc-subnet-name {
 description = "Name of the Subnet"
 type = string
}
