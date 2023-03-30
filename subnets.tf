# Create subnet
resource "aws_subnet" "app_subnet" {
  vpc_id     = aws_vpc.app_vpc.id
  cidr_block = "${aws_vpc.app_vpc.cidr_block}"
  availability_zone = var.availability_zone
  tags = {
    Name = "app_subnet"
  }
}