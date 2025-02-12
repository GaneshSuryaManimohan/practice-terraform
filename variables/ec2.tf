#resource resource-type       resource-name
resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description

#this is called as a block in terraform
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr
  }

  egress {
    from_port   = 0 #this means open to all protocols
    to_port     = 0
    protocol    = "-1" # all protocols
    cidr_blocks = var.allowed_cidr
  }

  tags = {
    Name      = "allow_ssh"
    CreatedBy = "Manimohan"
  }
}

resource "aws_instance" "DB" {
  ami                    = var.image_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type          = var.instance_type
  tags                   = var.tags
}