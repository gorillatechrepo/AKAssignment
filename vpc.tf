 # Create VPC
resource "aws_vpc" "app_vpc" {
  cidr_block = "192.168.0.0/24"
  tags = {
    Name = "app_vpc"
  }
}