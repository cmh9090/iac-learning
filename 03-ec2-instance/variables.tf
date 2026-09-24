variable "my_ip" {
  description = "Your public IP address, in CIDR notation, for SSH access"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}