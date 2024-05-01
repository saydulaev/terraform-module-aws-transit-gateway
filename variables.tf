variable "amazon_side_asn" {
  description = "Private Autonomous System Number (ASN) for the Amazon side of a BGP session."
  type        = number
  default     = 64512

  validation {
    condition     = (var.amazon_side_asn >= 64512 && var.amazon_side_asn <= 65534) || (var.amazon_side_asn >= 4200000000 && var.amazon_side_asn <= 4294967294)
    error_message = "The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs."
  }
}

variable "auto_accept_shared_attachments" {
  description = "Whether resource attachment requests are automatically accepted."
  type        = string
  default     = "disable"

  validation {
    condition     = contains(["disable", "enable"], var.auto_accept_shared_attachments)
    error_message = "Valid values: disable, enable."
  }
}

variable "default_route_table_association" {
  description = "Whether resource attachments are automatically associated with the default association route table."
  type        = string
  default     = "enable"

  validation {
    condition     = contains(["disable", "enable"], var.default_route_table_association)
    error_message = "Valid values: disable, enable."
  }
}

variable "default_route_table_propagation" {
  description = "Whether resource attachments automatically propagate routes to the default propagation route table."
  type        = string
  default     = "enable"

  validation {
    condition     = contains(["disable", "enable"], var.default_route_table_propagation)
    error_message = "Valid values: disable, enable."
  }
}

variable "dns_support" {
  description = "Whether DNS support is enabled"
  type        = string
  default     = "enable"

  validation {
    condition     = contains(["disable", "enable"], var.dns_support)
    error_message = "Valid values: disable, enable."
  }
}

variable "multicast_support" {
  description = "Whether Multicast support is enabled. Required to use ec2_transit_gateway_multicast_domain."
  type        = string
  default     = "disable"

  validation {
    condition     = contains(["disable", "enable"], var.multicast_support)
    error_message = "Valid values: disable, enable."
  }
}

variable "transit_gateway_cidr_blocks" {
  description = "One or more IPv4 or IPv6 CIDR blocks for the transit gateway."
  type        = list(string)
  default     = null
}

variable "vpn_ecmp_support" {
  description = " Whether VPN Equal Cost Multipath Protocol support is enabled."
  type        = string
  default     = "enable"

  validation {
    condition     = contains(["disable", "enable"], var.vpn_ecmp_support)
    error_message = "Valid values: disable, enable."
  }
}

variable "description" {
  description = "Transit Gatewa description."
  type        = string
  default     = ""
}

variable "create_tg_custom_route_table" {
  description = "Whether should be create a custom RT for TG."
  type = bool
  default = false
}

variable "tags" {
  description = "Resource key value tags."
  type        = map(string)
  default     = {}
}