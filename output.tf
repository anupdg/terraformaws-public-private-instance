output "vpc_id" {
  value = "${data.aws_vpc.vpc.id}"
}

output "private_sg_id" {
  value = "${data.aws_security_group.private.id}"
}

output "public_sg_id" {
  value = "${data.aws_security_group.public.id}"
}

output "private_subnet_ids" {
  value = "${data.aws_subnet_ids.private.ids}"
}

output "public_subnet_ids" {
  value = "${data.aws_subnet_ids.public.ids}"
}
