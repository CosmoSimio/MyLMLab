#Variable declarations
variable "aws_access_key" {
  type = string
  default = "" #Enter Access Key value here
  description = "AWS CLI User Access Key"
}

variable "aws_secret_key" {
  type = string
  default = "" #Enter Secret Key value here
  description = "AWS CLI User Secret Key"
}

variable "aws_region" {
  type = string
  default = "us-east-2"
  description = "AWS region to launch servers."
}

variable "ami_winserv2022" {
    type = string
    default = "ami-0e2ccde53f223f3c8"
    description = "Microsoft Windows Server 2022 Core Base"
}

variable "ami_linux" {
  type = string
  default = "ami-089a545a9ed9893b6"
  description = "Amazon Linux 2 Kernel 5.10"
}

variable "key_name" {
  type = string
  default = "" #Enter your AWS EC2 key pair name
}

variable "vpc_id" {
  type = string
  default = "" #Enter the VPC ID of the LM Support Lab
}

variable "security_group" {
  type = string
  default = "" #Enter the Security Group ID of the LM Support Lab
}