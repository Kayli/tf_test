variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"

  type = list
  default = [
    "172.33.10.0/24",
    "172.33.20.0/24",
    "172.33.30.0/24",
  ]
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"

  type = list
  default = [
    "172.33.100.0/24",
    "172.33.110.0/24",
    "172.33.120.0/24",
  ]
}

variable "availability_zones" {
  description = "List of Availability Zones"

  type = list
  default = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c",
  ]
}

variable "environment" {
  description = "The environment name"

  type    = string
  default = null
}

variable "aws_region" {
  description = "AWS region"

  type    = string
  default = "us-east-1"
}

variable "aws_account_ids" {
  description = "AWS account IDs"

  type    = list
  default = null
}