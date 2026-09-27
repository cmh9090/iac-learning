output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.network.private_subnet_ids
}

output "web_sg_id" {
  value = module.security.web_sg_id
}

output "app_sg_id" {
  value = module.security.app_sg_id
}

output "db_sg_id" {
  value = module.security.db_sg_id
}

output "db_endpoint" {
  value = module.db_tier.db_endpoint
}

output "db_name" {
  value = module.db_tier.db_name
}

output "public_ip_web" {
  value = module.web_tier.public_ip
}

output "instance_id_web" {
  value = module.web_tier.instance_id
}

output "private_ip_app" {
  value = module.app_tier.private_ip
}

output "instance_id_app" {
  value = module.app_tier.instance_id
}