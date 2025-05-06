variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC, defining the IP address range for the entire network."
  type        = string
}

variable "public_subnet_cidr_blocks" {
  description = "The list of CIDR blocks to use in building the public subnets. List size needs to match availability zone count."
  type        = list
}

variable "private_subnet_cidr_blocks" {
  description = "The list of CIDR blocks to use in building the private subnets. List size needs to match availability zone count."
}

variable "availability_zones" {
  description = "The list of availability zones to utilize in a given region."
  type        = list
}

variable "environment" {
  description = "The environment type being created, such as 'dev', 'staging', or 'prod'."
  type        = string
}
