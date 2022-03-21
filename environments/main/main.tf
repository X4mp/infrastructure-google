# Google Infrastructure configuration

provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source  = "../../modules/vpc"
  project_id = var.project_id
  region = var.region
}

module "gke" {
  source  = "../../modules/gke"
  project_id = var.project_id
  region = var.region
  vpc_name = module.vpc.vpc_name
  vpc_subnet_name = module.vpc.subnet_name
}
