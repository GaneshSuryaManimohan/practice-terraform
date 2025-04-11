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
  default = "Z09254361YXRI2M5F61SK"
}

variable "domain_name" {
  default = "surya-devops.site"
}