# create internet gateway and connect with vpc
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id
  
  tags = {
    Name = "${var.project_name}-internet_gateway"
  }
}