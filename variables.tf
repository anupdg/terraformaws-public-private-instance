variable "aws_profile" {
  description = "AWS profile"
}

variable "aws_region" {
  description = "AWS region"
}

variable "aws_environment" {
  description = "AWS environment name"
}

variable "aws_key_name" {
  description = "Instance key pair name"
}

variable "shared_credentials_file" {
  description = "AWS credential file location"
}

variable "aws_ami_type" {
  description = "AWS AMI type"
}

variable "aws_ami_ec2" {
  description = "AWS AMI id"
}

variable "base_tags" {
  description = "Tag for all resources."
  type        = "map"

  default = {
    "common.environment" = "dev"
    "terraform"          = "true"
  }
}
