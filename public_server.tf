resource "aws_instance" "ec2_server_public" {
  ami           = "${var.aws_ami_ec2}"
  instance_type = "${var.aws_ami_type}"
  subnet_id     = "${module.vpcmodule.public_subnet_id}"
  key_name      = "${var.aws_key_name}"

  tags = "${merge(
    map("Name", "${var.aws_environment}-public-server"),
    var.base_tags
  )}"

  vpc_security_group_ids = ["${module.vpcmodule.public_security_group_id}"]
}
