variable "image_id" {
  type        = string
  description = "RHEL-9 AMI ID"
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    Module      = "DB"
    Name        = "DB"
    CreatedBy   = "Terraform"
  }
}

variable "instance_name" {
  default = "DB"
}