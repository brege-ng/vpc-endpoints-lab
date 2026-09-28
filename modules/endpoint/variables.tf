variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "route_table_ids" {
  description = "List of route table IDs for Gateway endpoints"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs for Interface endpoints"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for Interface endpoints"
  type        = list(string)
}

variable "service_name_endpoint1" {
  description = "The name of the first service for the endpoint"
  type        = string
}

variable "service_name_endpoint2" {
  description = "The name of the second service for the endpoint"
  type        = string
}