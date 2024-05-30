# Automated Multi-Tier VPC Deployment on AWS with Terraform

This project showcases the automated setup of a multi-tier Virtual Private Cloud (VPC) using Terraform. The VPC includes public and private subnets, internet gateways, NAT gateways, and route tables. The configuration files in this repository enable you to deploy this infrastructure on AWS effortlessly.

## Prerequisites

Before getting started, the following are required:

- An AWS account (with configured credentials)
- Terraform installed on local machine

## Project Structure

The repository contains the following files:

- **01-vpc.tf**: Defines the VPC and fetches available availability zones.
- **02-igw.tf**: Creates an Internet Gateway and connects it to the VPC.
- **03-subnets.tf**: Defines public and private subnets in multiple availability zones.
- **04-eips.tf**: Allocates Elastic IPs for the NAT gateways.
- **05-nat-gateways.tf**: Configures NAT gateways for outbound internet access from private subnets.
- **06-route-tables.tf**: Sets up route tables for public and private subnets.
- **07-route-table-association.tf**: Associates subnets with their respective route tables.
- **outputs.tf**: Defines the outputs for the Terraform configuration.
- **provider.tf**: Configures the AWS provider for Terraform.
- **terraform.tfstate**: Stores the state of the Terraform-managed infrastructure.
- **terraform.tfvars**: Contains the environment-specific values.
- **variables.tf**: Defines the input variables for the Terraform configuration.

## Usage

To use this Terraform configuration, follow these steps:

1. **Initialize the Terraform configuration:**

   ```sh
   terraform init
   ```
2. **Validate the configuration:**

   ```sh
   terraform validate
   ```

3. **Plan the deployment:**

   ```sh
   terraform plan
   ```

4. **Apply the configuration:**

   ```sh
   terraform apply
   ```

5. **Destroy the infrastructure when no longer needed:**

   ```sh
   terraform destroy
   ```

## Resulting Infrastructure

Upon successful deployment, the following infrastructure will be created on AWS:

- **Virtual Private Cloud (VPC)**: A VPC with DNS support and hostnames enabled.
- **Internet Gateway**: An Internet Gateway attached to the VPC for internet access.
- **Public Subnets**: Public subnets in multiple availability zones with auto-assigned public IPs.
- **Private Subnets**: Private subnets for application and data tiers in multiple availability zones.
- **Elastic IPs (EIPs)**: EIPs allocated for the NAT gateways.
- **NAT Gateways**: NAT gateways to provide outbound internet access for private subnets.
- **Route Tables**: Route tables configured for public and private subnets, with appropriate routes for internet and NAT gateways.
