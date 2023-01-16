resource "aws_subnet" "main" {
  vpc_id     = "vpc-0ffed1182ae13f0af"
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "subnet-tf"
  }
}