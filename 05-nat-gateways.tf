# Configure NAT Gateway 1 for enabling outbound internet access for private subnets in Availability Zone 1
resource "aws_nat_gateway" "ngw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id = aws_subnet.public_subnet_availability_zone_1.id

  tags = {
    Name = "${var.project_name}-nat-gateway-1"
  }
}

# Configure NAT Gateway 2 for enabling outbound internet access for private subnets in Availability Zone 2
resource "aws_nat_gateway" "ngw2" {
  allocation_id = aws_eip.nat2.id
  subnet_id = aws_subnet.public_subnet_availability_zone_2.id

  tags = {
    Name = "${var.project_name}-nat-gateway-2"
  }
}