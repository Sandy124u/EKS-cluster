variable "cluster_name" {}
variable "node_count" {}
variable "region" {}
variable "environment" {}
variable "subnet_ids" {
  type = list(string)
}
variable "vpc_id" {}
variable "cluster_version" {}
