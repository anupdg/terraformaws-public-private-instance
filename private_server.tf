resource "aws_instance" "ec2_server_private" {
  ami           = "${var.aws_ami_ec2}"
  instance_type = "${var.aws_ami_type}"
  subnet_id     = "${module.vpcmodule.private_subnet_id}"
  key_name      = "${var.aws_key_name}"

  tags {
    Name = "${var.aws_environment}-private-server"
  }

  vpc_security_group_ids = ["${module.vpcmodule.private_security_group_id}"]
}
