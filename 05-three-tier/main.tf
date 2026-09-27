module "network" {
  source = "./modules/network"
}

module "security" {
  source       = "./modules/security"
  vpc_id       = module.network.vpc_id
  admin_ip     = "180.129.23.216/32"
  db_port      = 3306  # or 5432 depending on which engine you pick
}

module "db_tier" {
  source              = "./modules/db-tier"
  private_subnet_ids  = module.network.private_subnet_ids
  db_sg_id            = module.security.db_sg_id
  db_username         = var.db_username
  db_password         = var.db_password
}

module "web_tier" {
  source            = "./modules/web-tier"
  ami_id            = data.aws_ami.amazon_linux.id
  public_subnet_id  = module.network.public_subnet_ids[0]
  web_sg_id         = module.security.web_sg_id
  key_name          = var.key_name
}

module "app_tier" {
  source              = "./modules/app-tier"
  ami_id              = data.aws_ami.amazon_linux.id
  private_subnet_id   = module.network.private_subnet_ids[0]
  app_sg_id           = module.security.app_sg_id
  key_name            = var.key_name
}