resource "aws_internet_gateway" "internetgatway" {
  vpc_id = "vpc-0ffed1182ae13f0af"

  tags = {
    Name = "Terraform internetgateway"
  }
}