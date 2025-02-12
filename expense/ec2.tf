#resource resource-type       resource-name
resource "aws_instance" "expense" {
  ami           = var.image_id
  count         = length(var.instance_names)
  #count = 3
  instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = merge(
    var.common_tags,
    {
        Name = var.instance_names[count.index]
        Module = var.instance_names[count.index]
    }
  )
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"

    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
        cidr_blocks      = var.allowed_cidr
    }

    egress {
        from_port        = 0 #this means open to all protocols
        to_port          = 0
        protocol         = "-1" # all protocols
        cidr_blocks      = var.allowed_cidr
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Manimohan"
    }
}
