variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "workstation_ip" {
  type = string
  default = "68.201.253.153"
}

variable "ami_key_pair_name" {
  type = string
  default = "app_key"
}

variable "instance_ami"{
  type = string
  default = "ami-0984b842ee24d45f1"
}

variable "availability_zone"{
  type = string
  default = "us-east-2a"
}