resource "aws_instance" "bbg_instance" {
  ami           = "${var.ami}"
  instance_type = "${var.flavor}"
  key_name = "${var.keyname}"
  subnet_id     = "${var.subnet_id}"
  tags = {
    Name = "${var.ec2-name}"
  }
}
