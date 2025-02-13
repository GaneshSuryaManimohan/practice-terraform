#EC2 Variables
variable "instance_names" {
  type    = map(string)
  default = {
    db = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "common_tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    CreatedBy   = "Terraform"
  }
}

#R53 Variables
variable "zone_id"{
  default = "Z07132903T2RITB7RWQLU"
}

variable "domain_name" {
  default = "surya-devops.online"
}