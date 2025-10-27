module "eks" {
  source          = "../../modules/eks"
  cluster_name    = "eks-${terraform.workspace}"
  cluster_version = "1.28"
  subnet_ids      = ["subnet-abc", "subnet-def"]
  vpc_id          = "vpc-xyz"
  node_count      = 2
  environment     = terraform.workspace
  region          = "ap-southeast-2"  # ✅ Add this line
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = terraform.workspace
    Name        = "terraform-locks"
  }
}
