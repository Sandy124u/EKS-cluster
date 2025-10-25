terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"     # Replace with your actual bucket name
    key            = "eks/prod/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-locks"                 # Replace with your actual table name
    encrypt        = true
  }
}
