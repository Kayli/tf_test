
# Terraform VPC Project

This project defines a Virtual Private Cloud (VPC) infrastructure using Terraform. It consists of a VPC module and a sandbox environment for testing and deployment.

## Project Structure

*   `modules/vpc`: Contains the core Terraform module for creating the VPC.
    *   `main.tf`: Defines the VPC resources, including subnets, internet gateway, NAT gateway, and route tables.
    *   `variables.tf`: Defines the input variables for the VPC module.
    *   `outputs.tf`: Defines the output variables for the VPC module.
*   `sandbox`: Contains the Terraform configuration for deploying the VPC module in a sandbox environment.
    *   `vpc.tf`: Defines the variables and module call for the VPC module in the sandbox.
    *   `terraform.tfvars`: Defines the values for the variables used in the sandbox.
    *   `provider.tf`: Configures the Terraform provider (e.g., AWS).

## Functionality

The VPC module creates the following resources:

*   VPC with specified CIDR block
*   Public subnets in multiple availability zones
*   Private subnets (currently incomplete implementation)
*   Internet Gateway for public subnet access to the internet
*   NAT Gateway for private subnet access to the internet
*   Route tables for public and private subnets

## Usage

To deploy the VPC in the sandbox environment:

1.  Configure the AWS provider in `sandbox/provider.tf` with your credentials.
2.  Define the desired variable values in `sandbox/terraform.tfvars`.
3.  Run `terraform init` to initialize the Terraform project.
4.  Run `terraform plan` to review the changes.
5.  Run `terraform apply` to create the resources.

## Note

The `private_subnets` resource in `modules/vpc/main.tf` is not fully implemented and requires further configuration.
