#resource resource-type       resource-name
resource "aws_instance" "ec2_instances" {
  ami           = data.aws_ami.ami_id.id
  vpc_security_group_ids = [data.aws_security_group.sg_id.id]
  instance_type = "t3.micro"
  tags = {
    Name = "data-Practice"
  }
}