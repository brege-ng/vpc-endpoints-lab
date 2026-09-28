variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}

variable "cidr_block_vpc" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "cidr_block_public" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "cidr_block_private" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "service_name_endpoint1" {
  description = "The name of the first service for the endpoint"
  type        = string
}

variable "service_name_endpoint2" {
  description = "The name of the second service for the endpoint"
  type        = string
}