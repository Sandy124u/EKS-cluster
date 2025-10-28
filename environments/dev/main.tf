terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.18.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}



module "eks" {
  source          = "../../modules/eks"
  cluster_name    = "eks-${terraform.workspace}"
  cluster_version = "1.29"
  subnet_ids      = ["subnet-020390a81da7c36ee", "subnet-07262c17075d54334", "subnet-0b9c8c2db24d0db10"]
  vpc_id          = "vpc-0955bf71c3993ea5a"
  node_count      = 2
  environment     = terraform.workspace
  region          = "ap-southeast-2"  # ✅ Add this line
}

# resource "aws_dynamodb_table" "terraform_locks" {
#   name         = "terraform-locks"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   tags = {
#     Environment = terraform.workspace
#     Name        = "terraform-locks"
#   }
# }
