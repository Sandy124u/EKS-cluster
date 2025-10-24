variable "cluster_name" {}
variable "cluster_version" {}
variable "subnet_ids" { type = list(string) }
variable "vpc_id" {}
variable "node_count" {}
variable "environment" {}
variable "region" {
  type = string
}
