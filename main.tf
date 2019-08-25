provider "aws" {
  region = "ap-south-1"
}

# Get VPC ID
data "aws_vpc" "selected" {
  tags = {
    Name  = "A"
    Batch = "B"
  }
}

# Get Security Group Id
data "aws_security_group" "sg" {
  name = "xyz"

  vpc_id = "${data.aws_vpc.selected.id}"
}

data "aws_subnet"{
  filter {
    name = "tag:Name"
    values = ...
  }
}
