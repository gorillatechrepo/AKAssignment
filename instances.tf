# Create LB EC2 instances
resource "aws_instance" "app_lb" {
  ami           = var.instance_ami  # Ubuntu 18.04 as 16 is End of Support and no longer available
  instance_type = var.instance_type
  key_name = "${var.ami_key_pair_name}"
    tags = {
    Name = "LB"
  }

  network_interface {
    network_interface_id = aws_network_interface.lb_nic.id
    device_index = 0
   }
}

# Create WEB EC2 instances
resource "aws_instance" "app_web" {
  ami           = var.instance_ami  # Ubuntu 18.04 as 16 is End of Support and no longer available
  instance_type = var.instance_type
  key_name = "${var.ami_key_pair_name}"
    tags = {
    Name = "WEB"
  }

  network_interface {
    network_interface_id = aws_network_interface.web_nic.id
    device_index = 0
   }
}

# Create DB EC2 instances
resource "aws_instance" "app_db" {
  ami           = var.instance_ami  # Ubuntu 18.04 as 16 is End of Support and no longer available
  instance_type = var.instance_type
  key_name = "${var.ami_key_pair_name}"
    tags = {
    Name = "DB"
  }

  network_interface {
    network_interface_id = aws_network_interface.db_nic.id
    device_index = 0
   }
}