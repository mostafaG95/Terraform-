resource "aws_instance" "terraform-instance" {
  ami           = "ami-06878d265978313ca"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0999f47728c19f007"
  associate_public_ip_address = "true"
  vpc_security_group_ids = [ "sg-0a85b03080e7b1283" ]
  user_data = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  EOF

  tags = {
    Name = "terraform"
  }
}