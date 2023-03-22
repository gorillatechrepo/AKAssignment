# LB NIC
resource "aws_network_interface" "lb_nic" {
  subnet_id   = aws_subnet.app_subnet.id
  private_ips = ["192.168.0.11"]
  security_groups = [
    aws_security_group.subnet_sg.id,
    aws_security_group.http_sg.id,
    aws_security_group.ssh_sg.id,
  ]
}

# WEB NIC
resource "aws_network_interface" "web_nic" {
  subnet_id   = aws_subnet.app_subnet.id
  private_ips = ["192.168.0.12"]
  security_groups = [
    aws_security_group.subnet_sg.id,
    aws_security_group.ssh_sg.id,
  ]
}

# DB NIC
resource "aws_network_interface" "db_nic" {
  subnet_id   = aws_subnet.app_subnet.id
  private_ips = ["192.168.0.13"]
  security_groups = [
    aws_security_group.subnet_sg.id,
    aws_security_group.ssh_sg.id,
  ]
}