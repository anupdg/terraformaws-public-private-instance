resource "aws_instance" "ec2_server_public" {
  ami           = "${var.aws_ami_id}"
  instance_type = "${var.aws_ami_type}"
  subnet_id     = "${data.aws_subnet_ids.public.ids[0]}"
  key_name      = "${var.aws_key_name}"

  tags = "${merge(
    map("Name", "${var.aws_environment}-public-server"),
    var.base_tags
  )}"

  vpc_security_group_ids = ["${data.aws_security_group.private.id}"]
}
