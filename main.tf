#Define your AWS CLI credentials and the preferred AWS region
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.aws_region
}

#Launch the Windows Domain Controller
resource "aws_instance" "ec2windc1.isaaclabdom.local" {
  ami = var.ami_winserv2022
  instance_type = "t3.small"
  key_name = var.key_name
  vpc_id = var.vpc_id
  security_groups = var.security_group

  tags = {
    "Name" = "ec2windc1.isaaclabdom.local"
    "Owner" = "isaac.paramo@logicmonitor.com"
    "Purpose" = "Lab"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }

  user_data = <<EOF

  EOF
}

#Launch the Windows collector server for a LogicMonitor collector agent install
resource "aws_instance" "ec2wincoll1.isaaclabdom.local" {
  ami = var.ami_winserv2022
  instance_type = "t3.small"
  key_name = var.key_name
  vpc_id = var.vpc_id
  security_groups = var.security_group

  tags = {
    "Name" = "ec2wincoll1.isaaclabdom.local"
    "Owner" = "isaac.paramo@logicmonitor.com"
    "Purpose" = "Lab"
    }

  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }

  user_data = <<EOF

  EOF
}

#Launch a Linux collector server for a LogicMonitor collector agent install
resource "aws_instance" "ec2lincoll1.isaaclabdom.local" {
  ami = var.ami_linux
  instance_type = "t3.small"
  key_name = var.key_name
  vpc_id = var.vpc_id
  security_groups = var.security_group

  tags = {
    "Name" = "ec2lincoll1.isaaclabdom.local"
    "Owner" = "isaac.paramo@logicmonitor.com"
    "Purpose" = "Lab"
    }

  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }

  user_data = <<EOF

  EOF
}