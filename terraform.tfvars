# Environment Values
aws_region   = "us-east-1"
project_name = "main"

# VPC Values
vpc_cidr_block                   = "10.0.0.0/16"
public_subnet_availability_zone_1_cidr_block     = "10.0.0.0/24"
public_subnet_availability_zone_2_cidr_block     = "10.0.1.0/24"
private_app_subnet_availability_zone_1_cidr_block = "10.0.2.0/24"
private_app_subnet_availability_zone_2_cidr_block = "10.0.3.0/24"
private_data_subnet_availability_zone_1_cidr_block = "10.0.4.0/24"
private_data_subnet_availability_zone_2_cidr_block = "10.0.5.0/24"

# Bucket Prefix
s3_bucket_prefix = "terraform-state-bucket-"
