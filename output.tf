output "private_subnet_id" {
  description = "Private subnet id"
  value       = "${module.vpcmodule.private_subnet_id}"
}

output "public_subnet_id" {
  description = "public subnet id"
  value       = "${module.vpcmodule.public_subnet_id}"
}

output "private_security_group_id" {
  description = "Private security group id"
  value       = "${module.vpcmodule.private_security_group_id}"
}

output "public_security_group_id" {
  description = "public security group id"
  value       = "${module.vpcmodule.public_security_group_id}"
}

output "public_instance_id" {
  description = "Public EC2 instance id"
  value       = "${aws_instance.ec2_server_public.*.id}"
}

output "private_instance_id" {
  description = "Private EC2 instance id"
  value       = "${aws_instance.ec2_server_private.*.id}"
}
