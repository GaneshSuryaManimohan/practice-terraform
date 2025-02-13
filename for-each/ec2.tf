#resource resource-type       resource-name
resource "aws_instance" "expense" {
  for_each = var.instance_names
  ami           = data.aws_ami.ami_info.id 
  instance_type = each.value
  vpc_security_group_ids = [data.aws_security_group.sg_id.id]
  tags = merge(
    var.common_tags,
    {
        Name = each.key
        Module = each.key
    }
  )
}