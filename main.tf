module "network" {
  source = "./modules/network"

  cidr_block_vpc     = var.cidr_block_vpc
  cidr_block_public  = var.cidr_block_public
  cidr_block_private = var.cidr_block_private
}

module "compute" {
  source = "./modules/compute"

  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.network.private_subnet_id
  security_group_ids = [module.network.security_group_id]
}

module "endpoint" {
  source = "./modules/endpoint"

  vpc_id                 = module.network.vpc_id
  route_table_ids        = [module.network.private_route_table_id]
  subnet_ids             = [module.network.public_subnet_id]
  security_group_ids     = [module.network.security_group_id]
  service_name_endpoint1 = var.service_name_endpoint1
  service_name_endpoint2 = var.service_name_endpoint2
}