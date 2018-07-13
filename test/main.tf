module "public_private_servers" {
  source                  = "../"
  aws_profile             = "StudyProfile"
  aws_region              = "ap-south-1"
  aws_environment         = "testenv"
  aws_key_name            = "key-mumbai-ap-south-1"
  shared_credentials_file = "C:/AWS/study/credentials"
  aws_ami_type            = "t2.micro"
  aws_ami_ec2             = "ami-5f95bd30"
}
