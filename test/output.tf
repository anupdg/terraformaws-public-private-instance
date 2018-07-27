output "vpc_id" {
  value = "${module.public_private_servers.vpc_id}"
}

output "private_sg_id" {
  value = "${module.public_private_servers.private_sg_id}"
}

output "public_sg_id" {
  value = "${module.public_private_servers.public_sg_id}"
}

output "private_subnet_ids" {
  value = "${module.public_private_servers.private_subnet_ids}"
}

output "public_subnet_ids" {
  value = "${module.public_private_servers.public_subnet_ids}"
}
