terraform {
  backend "s3" {
    bucket         = "dynomo-db-bucket"  # ✅ Remove trailing space
    key            = "eks/prod/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true   # ✅ Enables state locking
    encrypt        = true
  }
}

