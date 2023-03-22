resource "aws_security_group" "ssh_sg" {
  name_prefix = "ssh_sg"
  vpc_id = aws_vpc.app_vpc.id

   ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.workstation_ip}/32"]
}
}

resource "aws_security_group" "http_sg" {
  name_prefix = "app_sg"
  vpc_id = aws_vpc.app_vpc.id

   ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${var.workstation_ip}/32"]
  }
}

resource "aws_security_group" "subnet_sg" {
  name_prefix = "subnet-sg"
  vpc_id      = aws_vpc.app_vpc.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.app_vpc.cidr_block}"]
  }

  # Block all other traffic
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
