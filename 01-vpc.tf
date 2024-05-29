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

# Define Public Subnet in AZ1
resource "aws_subnet" "public_subnet_availability_zone_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_availability_zone_1_cidr_block
  availability_zone = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-availability-zone-1"
  }
}

# Define Public Subnet in AZ2
resource "aws_subnet" "public_subnet_availability_zone_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_availability_zone_2_cidr_block
  availability_zone = data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-availability-zone-2"
  }
}

# Define Private App Subnet in AZ1
resource "aws_subnet" "private_app_subnet_availability_zone_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_app_subnet_availability_zone_1_cidr_block
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "${var.project_name}-private-app-subnet-availability-zone-1"
  }
}

# Define Private App Subnet in AZ2
resource "aws_subnet" "private_app_subnet_availability_zone_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_app_subnet_availability_zone_2_cidr_block
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "${var.project_name}-private-app-subnet-availability-zone-2"
  }
}

# Define Private Data Subnet in AZ1
resource "aws_subnet" "private_data_subnet_availability_zone_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_data_subnet_availability_zone_1_cidr_block
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "${var.project_name}-private-data-subnet-availability-zone-1"
  }
}

# Define Private Data Subnet in AZ2
resource "aws_subnet" "private_data_subnet_availability_zone_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_data_subnet_availability_zone_2_cidr_block
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "${var.project_name}-private-data-subnet-availability-zone-2"
  }
}

# Data Source for Availability Zones
data "aws_availability_zones" "available" {
  state = "available"
}
