module "eks" {
  source          = "../../modules/eks"
  cluster_name    = var.cluster_name
  node_count      = var.node_count
  environment     = var.environment
  subnet_ids      = var.subnet_ids
  vpc_id          = var.vpc_id
  cluster_version = var.cluster_version
}
