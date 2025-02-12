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

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "Allow port 22 to for SSH access"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}