data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["${var.aws_environment}-vpc"]
  }
}

data "aws_security_group" "private" {
  filter {
    name   = "tag:Name"
    values = ["${var.aws_environment}-private-sg"]
  }
}

data "aws_security_group" "public" {
  filter {
    name   = "tag:Name"
    values = ["${var.aws_environment}-public-sg"]
  }
}

data "aws_subnet_ids" "private" {
  vpc_id = "${data.aws_vpc.vpc.id}"

  tags {
    Visibility = "Private"
  }
}

data "aws_subnet_ids" "public" {
  vpc_id = "${data.aws_vpc.vpc.id}"

  tags {
    Visibility = "Public"
  }
}
