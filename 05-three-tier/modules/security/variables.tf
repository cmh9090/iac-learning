variable "project_name" {
  type    = string
  default = "three-tier"
}

variable "vpc_id" {
  type = string
}

variable "admin_ip" {
  description = "Your IP in CIDR notation, e.g. 1.2.3.4/32"
  type        = string
}

variable "app_port" {
  type    = number
  default = 8080
}

variable "db_port" {
  description = "3306 for MySQL, 5432 for Postgres"
  type        = number
  default     = 5432
}