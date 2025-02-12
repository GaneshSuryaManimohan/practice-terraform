#EC2 Variables
variable "instance_names" {
  type    = list
  default = ["db", "backend", "frontend"]
}

variable "image_id" {
  type        = string
  description = "RHEL-9 AMI ID"
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "common_tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    CreatedBy   = "Terraform"
  }
}

#SG Variables
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

#R53 Variables
variable "zone_id"{
  default = "Z07132903T2RITB7RWQLU"
}

variable "domain_name" {
  default = "surya-devops.online"
}