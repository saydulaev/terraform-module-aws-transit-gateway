output "attributes" {
  description = "All Transit gateway exported attributes"
  value       = aws_ec2_transit_gateway.this
}

output "route_table" {
  value = one(aws_ec2_transit_gateway_route_table.this[*])
}