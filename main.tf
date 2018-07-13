provider "aws" {
  shared_credentials_file = "${var.shared_credentials_file}"
  region                  = "${var.aws_region}"
  profile                 = "${var.aws_profile}"
}

module "vpcmodule" {
  source                  = "git::https://github.com/asteranup/terraformaws.git" #"../"
  aws_profile             = "${var.aws_profile}"
  aws_region              = "${var.aws_region}"
  aws_environment         = "${var.aws_environment}"
  aws_key_name            = "${var.aws_key_name}"
  shared_credentials_file = "${var.shared_credentials_file}"
}
