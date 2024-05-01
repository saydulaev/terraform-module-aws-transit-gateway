resource "aws_ec2_transit_gateway" "this" {
  description                     = var.description
  amazon_side_asn                 = var.amazon_side_asn
  auto_accept_shared_attachments  = var.auto_accept_shared_attachments
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation
  dns_support                     = var.dns_support
  multicast_support               = var.multicast_support
  transit_gateway_cidr_blocks     = var.transit_gateway_cidr_blocks
  vpn_ecmp_support                = var.vpn_ecmp_support
  tags                            = merge(
    var.tags,
    {
      "Pluto:CostCenter"  = "Networking",
      "Pluto:Application" = "TransitGateway"
    }
  )

  timeouts {
    create = "10m"
    update = "10m"
    delete = "10m"
  }
}

resource "aws_ec2_transit_gateway_route_table" "this" {
  count = var.create_tg_custom_route_table ? 1 : 0
  transit_gateway_id = aws_ec2_transit_gateway.this.id
  tags               = var.tags
}