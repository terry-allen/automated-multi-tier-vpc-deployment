# Define Virtual Private Cloud (VPC)
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project_name}-vpc"
  }
}

# Data Source for Availability Zones
data "aws_availability_zones" "available" {
  state = "available"
}
