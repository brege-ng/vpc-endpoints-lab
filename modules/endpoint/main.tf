resource "aws_vpc_endpoint" "first_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = var.service_name_endpoint1
  vpc_endpoint_type = "Gateway"

  route_table_ids = var.route_table_ids

  tags = {
    Name = "MyVPCEndpoint"
  }
  
}

resource "aws_vpc_endpoint" "second_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = var.service_name_endpoint2
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.subnet_ids
  security_group_ids = var.security_group_ids

  tags = {
    Name = "MyVPCEndpointCloudWatch"
  }
  
}