terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"     # Replace with your actual bucket name
    key            = "eks/prod/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
  }
}
