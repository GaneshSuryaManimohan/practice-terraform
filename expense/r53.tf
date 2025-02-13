resource "aws_route53_record" "expense" {
  zone_id = var.zone_id
  count = length(var.instance_names)
  #count and count.index won't work in locals 
  name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 5
  #count and count.index won't work in locals 
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  ## Ensures Terraform updates existing records
  allow_overwrite = true 
#   # Prevents Terraform from deleting the Route53 record entirely
#   lifecycle {
#     ignore_changes = [name]
#   }
}