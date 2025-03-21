#terraform version
terraform {
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

#variables
variable "region" {
  description = "nome of the region"
  type        = string
  default     = "sa-east-1"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = "twotierarcitecturebucket"
}

variable "env" {
  description = "Environment where this module is invoked"
  type        = string
  default     = "development"
}

#resource block
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = var.bucket_name
    Environment = var.env
  }
}
