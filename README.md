<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.33.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |
| [aws_ec2_transit_gateway_route_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amazon_side_asn"></a> [amazon\_side\_asn](#input\_amazon\_side\_asn) | Private Autonomous System Number (ASN) for the Amazon side of a BGP session. | `number` | `64512` | no |
| <a name="input_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#input\_auto\_accept\_shared\_attachments) | Whether resource attachment requests are automatically accepted. | `string` | `"disable"` | no |
| <a name="input_create_tg_custom_route_table"></a> [create\_tg\_custom\_route\_table](#input\_create\_tg\_custom\_route\_table) | Whether should be create a custom RT for TG. | `bool` | `false` | no |
| <a name="input_default_route_table_association"></a> [default\_route\_table\_association](#input\_default\_route\_table\_association) | Whether resource attachments are automatically associated with the default association route table. | `string` | `"enable"` | no |
| <a name="input_default_route_table_propagation"></a> [default\_route\_table\_propagation](#input\_default\_route\_table\_propagation) | Whether resource attachments automatically propagate routes to the default propagation route table. | `string` | `"enable"` | no |
| <a name="input_description"></a> [description](#input\_description) | Transit Gatewa description. | `string` | `""` | no |
| <a name="input_dns_support"></a> [dns\_support](#input\_dns\_support) | Whether DNS support is enabled | `string` | `"enable"` | no |
| <a name="input_multicast_support"></a> [multicast\_support](#input\_multicast\_support) | Whether Multicast support is enabled. Required to use ec2\_transit\_gateway\_multicast\_domain. | `string` | `"disable"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource key value tags. | `map(string)` | `{}` | no |
| <a name="input_transit_gateway_cidr_blocks"></a> [transit\_gateway\_cidr\_blocks](#input\_transit\_gateway\_cidr\_blocks) | One or more IPv4 or IPv6 CIDR blocks for the transit gateway. | `list(string)` | `null` | no |
| <a name="input_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#input\_vpn\_ecmp\_support) | Whether VPN Equal Cost Multipath Protocol support is enabled. | `string` | `"enable"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_attributes"></a> [attributes](#output\_attributes) | All Transit gateway exported attributes |
| <a name="output_route_table"></a> [route\_table](#output\_route\_table) | n/a |
<!-- END_TF_DOCS -->