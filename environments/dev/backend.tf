terraform {
  backend "s3" {
    bucket         = "dynomo-db-bucket"  # ✅ Remove trailing space
    key            = "eks/prod/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-locks"   # ✅ Enables state locking
    encrypt        = true
  }
}

