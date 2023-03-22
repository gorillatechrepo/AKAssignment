variable "aws_region" {
  type    = string
  default = "ap-northeast-2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "workstation_ip" {
  type = string
  default = "13.49.41.254"
}

variable "ami_key_pair_name" {
  type = string
  default = "app_key"
}

variable "instance_ami"{
  type = string
  default = "ami-030e520ec063f6467"
}