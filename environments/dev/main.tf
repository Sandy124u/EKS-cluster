module "eks" {
  source          = "../../modules/eks"
  cluster_name    = "eks-${terraform.workspace}"
  cluster_version = "1.28"
  subnet_ids      = ["subnet-abc", "subnet-def"]
  vpc_id          = "vpc-xyz"
  node_count      = 2
  environment     = terraform.workspace
}
