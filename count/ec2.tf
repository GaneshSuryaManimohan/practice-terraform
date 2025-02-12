#resource resource-type       resource-name
resource "aws_instance" "ec2_instances" {
  ami           = var.image_id
  count         = length(var.instance_names)
  #count = 3
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name      = var.instance_names[count.index]
    CreatedBy = "Terraform"
  }
}


resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allowing SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0 #this means open to all protocols
    to_port     = 0
    protocol    = "-1" # all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "allow_ssh"
    CreatedBy = "Manimohan"
  }
}