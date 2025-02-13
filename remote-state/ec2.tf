#resource resource-type       resource-name
resource "aws_instance" "DB" { 
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-047b24331e54cb2bd"]
    instance_type = "t3.micro"
    tags = {
        Name = "DB"
        CreatedBy = "Terraform"
    }
}