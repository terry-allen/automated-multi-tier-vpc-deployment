# Environment Variables
variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
}

variable "project_name" {
  description = "The name of the project."
  type        = string
}

# VPC Variables
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnet_availability_zone_1_cidr_block" {
  description = "The CIDR block for the public subnet in availability zone 1."
  type        = string
}

variable "public_subnet_availability_zone_2_cidr_block" {
  description = "The CIDR block for the public subnet in availability zone 2."
  type        = string
}

variable "private_app_subnet_availability_zone_1_cidr_block" {
  description = "The CIDR block for the private application subnet in availability zone 1."
  type        = string
}

variable "private_app_subnet_availability_zone_2_cidr_block" {
  description = "The CIDR block for the private application subnet in availability zone 2."
  type        = string
}

variable "private_data_subnet_availability_zone_1_cidr_block" {
  description = "The CIDR block for the private data subnet in availability zone 1."
  type        = string
}

variable "private_data_subnet_availability_zone_2_cidr_block" {
  description = "The CIDR block for the private data subnet in availability zone 2."
  type        = string
}

# Bucket Prefix
variable "s3_bucket_prefix" {
  type        = string
  description = "Use this variable to create a unique bucket name beginning with the specified prefix."
  default     = "terraform-state-bucket-"
}
