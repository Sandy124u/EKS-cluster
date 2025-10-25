terraform {
  backend "s3" {
    bucket         = "dynomo-db-bucket "     # Replace with your actual bucket name
    key            = "eks/prod/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
  }
}
