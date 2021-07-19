variable subnet_id {
  description = "Description of subnet id"
  type = string
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

variable ec2-name {
  description = "Name of the ec2 instance"
  type = string
}

