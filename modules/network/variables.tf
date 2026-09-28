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
