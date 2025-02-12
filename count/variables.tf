variable "image_id" {
  type        = string
  description = "RHEL-9 AMI ID"
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_names" {
  type    = list(any)
  default = ["DB", "Backend", "Frontend"]
}