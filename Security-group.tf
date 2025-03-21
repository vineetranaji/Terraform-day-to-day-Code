//**************************************************************************************
//*********Creates basic security groups to be used For Ec2 instance/EFS, etc**********
//**************************************************************************************

#terraform version
terraform {
  required_version = ">=1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#provider
provider "aws" {
  region = var.region
}

#varaibles
variable "name" {
  description = "The name of the security groups"
}

variable "vpc_id" {
  description = "The VPC ID in which SG is going to be created"
}

variable "environment" {
  description = "The environment, used for tagging, e.g prod"
}

variable "cidr" {
  description = "The cidr block to use for internal security groups"
}

// Security group creation block
resource "aws_security_group" "allow_traffic" {
  name        = "allow_traffic_to_ec2"
  description = "Allow inbound traffic and outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow traffic for application server"
  }
}

// Inbound/Inress Security group rule attaching to Security group
resource "aws_vpc_security_group_ingress_rule" "allow_inbound_rule1" {
  security_group_id = aws_security_group.allow_traffic.id
  cidr_blocks       = var.cidr
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

// Outbound/Egress Security group rule attaching to Security group
resource "aws_vpc_security_group_egress_rule" "allow_outbound_rule1" {
  security_group_id = aws_security_group.allow_traffic.id
  cidr_blocks       = var.cidr
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

// Output
output "allow_ec2_traffic" {
  value = "${aws_security_group.allow_traffic.id}"
}
