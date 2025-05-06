output "vpc_id" {
  description = "The ID of the VPC"

  value = module.sandbox_vpc.id
}
