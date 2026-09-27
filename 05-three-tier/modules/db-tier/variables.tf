variable "project_name" {
  type    = string
  default = "three-tier"
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "db_sg_id" {
  type = string
}

variable "db_engine" {
  type    = string
  default = "mysql" # or "postgres"
}

variable "db_engine_version" {
  type    = string
  default = "8.0" # match to your engine choice
}

variable "db_name" {
  type    = string
  default = "appdb"
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}