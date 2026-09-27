variable "project_name" {
  type    = string
  default = "three-tier"
}

variable "ami_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "app_sg_id" {
  type = string
}

variable "key_name" {
  type = string
}