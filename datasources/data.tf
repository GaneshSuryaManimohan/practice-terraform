data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["973714476881"]
  filter {
    name = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
  filter {
    name = "image-id"
    values = ["ami-09c813fb71547fc4f"]
  }
}

data "aws_vpc" "default" {
  default = true
}

data "aws_security_group" "sg_id" {
  id =  "sg-047b24331e54cb2bd"
}