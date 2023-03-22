#PIP for LB
resource "aws_eip" "lb_pip"{
    vpc = true
    network_interface = aws_network_interface.lb_nic.id
    tags = {
        "Name" = "LB PIP"
    }
}

#PIP for WEB
resource "aws_eip" "web_pip"{
    vpc = true
    network_interface = aws_network_interface.web_nic.id
    tags = {
        "Name" = "WEB PIP"
    }
}
#Use EIP for PIP
resource "aws_eip" "db_pip"{
    vpc = true
    network_interface = aws_network_interface.db_nic.id
    tags = {
        "Name" = "DB PIP"
    }
}