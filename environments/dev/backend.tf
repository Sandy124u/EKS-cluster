terraform {
  backend "s3" {
    bucket = "my-eks-tf-state"
    key    = "eks/${terraform.workspace}/terraform.tfstate"
    region = "ap-south-1"
  }
}
