variable network_cidr {
  default = "192.168.100.0/24"
}

variable subnet_cidr {
  default = "192.168.100.0/24"
}

variable region {
 default="us-east-1"
}

variable availability_zone {
  default = "us-east-1a"
}

variable ami {
  default = "ami-0dc2d3e4c0f9ebd18"
}

variable flavor {
  default = "t2.micro"
}

variable keyname {
  default = "cloudgem.pem"
}
