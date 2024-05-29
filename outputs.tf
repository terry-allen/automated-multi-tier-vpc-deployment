# Export the region
output "region" {
  value = var.aws_region
}

# Export the project name
output "project_name" {
  value = var.project_name
}

# Export the VPC ID
output "vpc_id" {
  value = aws_vpc.vpc.id
}

# # Export the Internet Gateway ID
# output "internet_gateway_id" {
#   value = aws_internet_gateway.internet_gateway.id
# }

# Export the Public Subnet AZ1 ID
output "public_subnet_availability_zone_1_id" {
  value = aws_subnet.public_subnet_availability_zone_1.id
}

# Export the Public Subnet AZ2 ID
output "public_subnet_availability_zone_2_id" {
  value = aws_subnet.public_subnet_availability_zone_2.id
}

# Export the Private App Subnet AZ1 ID
output "private_app_subnet_availability_zone_1_id" {
  value = aws_subnet.private_app_subnet_availability_zone_1.id
}

# Export the Private App Subnet AZ2 ID
output "private_app_subnet_availability_zone_2_id" {
  value = aws_subnet.private_app_subnet_availability_zone_2.id
}

# Export the Private Data Subnet AZ1 ID
output "private_data_subnet_availability_zone_1_id" {
  value = aws_subnet.private_data_subnet_availability_zone_1.id
}

# Export the Private Data Subnet AZ2 ID
output "private_data_subnet_availability_zone_2_id" {
  value = aws_subnet.private_data_subnet_availability_zone_2.id
}

# # Export the first Availability Zone
# output "availability_zone_1" {
#   value = data.aws_availability_zones.available_zones.names[0]
# }

# # Export the second Availability Zone
# output "availability_zone_2" {
#   value = data.aws_availability_zones.available_zones.names[1]
# }
