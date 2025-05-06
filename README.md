
# Terraform VPC Project

This project defines a Virtual Private Cloud (VPC) infrastructure using Terraform. It consists of a VPC module and a sandbox environment for testing and deployment.

## Project Structure

*   `env/sandbox`: Contains the Terraform configuration for deploying the VPC module in a sandbox environment.
    *   `main.tf`: Main terraform file.
    *   `outputs.tf`: Defines the output variables for the sandbox.
    *   `provider.tf`: Configures the Terraform provider (e.g., AWS).
    *   `terraform.tfvars`: Defines the values for the variables used in the sandbox.
    *   `variables.tf`: Defines the variables for the sandbox.
*   `modules/vpc`: Contains the core Terraform module for creating the VPC.
    *   `main.tf`: Defines the VPC resources, including subnets, internet gateway, NAT gateway, and route tables.
    *   `variables.tf`: Defines the input variables for the VPC module.
    *   `outputs.tf`: Defines the output variables for the VPC module.

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

1.  Configure the AWS provider in `env/sandbox/provider.tf` with your credentials.
2.  Define the desired variable values in `env/sandbox/terraform.tfvars`.
3.  Change current directory to `env/sandbox` folder by running: `cd env/sandbox` command
4.  Run `terraform init` to initialize the Terraform project.
5.  Run `terraform plan -var-file="terraform.tfvars"` to review the changes.
6.  Run `terraform apply -var-file="terraform.tfvars"` to create the resources.
6.  Run `terraform destroy -var-file="terraform.tfvars"` to destroy the resources.

