# Specify the provider
provider "aws" {
  region = "us-east-1"
}

# === Module: Amazon ECR ===
module "ecr" {
  source          = "./modules/ecr"
  repository_name = "ecs-webapp-repo"
  environment     = "dev"
}

# === Module: Networking (VPC, Subnets, Security Group) ===
module "network" {
  source              = "./modules/network"
  vpc_cidr_block      = "10.0.0.0/16"
  subnet_1_cidr       = "10.0.1.0/24"
  subnet_2_cidr       = "10.0.2.0/24"
  availability_zone_1 = "us-east-1a"
  availability_zone_2 = "us-east-1b"
}

# === Module: ECS Cluster and Service Deployment ===
module "ecs" {
  source              = "./modules/ecs"
  cluster_name        = var.cluster_name
  task_family         = var.task_family
  cpu                 = var.cpu
  memory              = var.memory
  container_name      = var.container_name
  container_image     = var.container_image
  container_port      = var.container_port
  service_name        = var.service_name
  desired_count       = var.desired_count
  subnet_ids          = module.network.subnet_ids
  security_group_id   = module.network.security_group_id
}
