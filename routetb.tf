resource "aws_route_table" "lab1-tf" {
  vpc_id = "vpc-0ffed1182ae13f0af"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-044e111b78342352b"
  }

  tags = {
    Name = "routetb-tf"
  }
}
resource "aws_route_table_association" "public-subnet-association" {
  subnet_id      = "subnet-0999f47728c19f007"
  route_table_id = "rtb-0d3f9ad5423c7e282"
}