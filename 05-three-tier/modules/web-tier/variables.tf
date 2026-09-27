variable "project_name" {
  type    = string
  default = "three-tier"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI for ap-southeast-1"
  type        = string
}

variable "public_subnet_id" {
  type = string
}

variable "web_sg_id" {
  type = string
}

variable "key_name" {
  description = "Existing EC2 key pair name for SSH access"
  type        = string
}