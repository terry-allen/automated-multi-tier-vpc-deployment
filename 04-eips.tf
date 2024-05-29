# Elastic IP for NAT Gateway 1
resource "aws_eip" "nat1" {

  tags = {
    Name = "${var.project_name}-eip-nat1"
  }

  # make sure NAT Gateway 1 created after Internet Gateway
  depends_on = [aws_internet_gateway.internet_gateway]
}

# Elastic IP for NAT Gateway 2
resource "aws_eip" "nat2" {

  tags = {
    Name = "${var.project_name}-eip-nat2"
  }

  # make sure NAT Gateway 2 created after Internet Gateway
  depends_on = [aws_internet_gateway.internet_gateway]
}