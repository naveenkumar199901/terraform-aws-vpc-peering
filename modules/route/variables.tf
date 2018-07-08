variable "create" {
  description = "(Optional) Whether to create this resource or not"
  default     = true
}

variable "route_table_ids" {
  description = " (Required) The IDs of the routing table"
  type        = "list"
}

variable "destination_cidr_block" {
  description = "(Optional) The destination CIDR block"
  type        = "string"
  default     = ""
}

variable "destination_ipv6_cidr_block" {
  description = "(Optional) The destination IPv6 CIDR block"
  type        = "string"
  default     = ""
}

variable "vpc_peering_connection_id" {
  description = "(Optional) An ID of a VPC peering connection"
  type        = "string"
  default     = ""
}

variable "egress_only_gateway_id" {
  description = "(Optional) An ID of a VPC Egress Only Internet Gateway"
  type        = "string"
  default     = ""
}

variable "gateway_id" {
  description = "(Optional) An ID of a VPC internet gateway or a virtual private gateway"
  type        = "string"
  default     = ""
}

variable "nat_gateway_id" {
  description = "(Optional) An ID of a VPC NAT gateway"
  type        = "string"
  default     = ""
}

variable "instance_id" {
  description = "(Optional) An ID of an EC2 instance"
  type        = "string"
  default     = ""
}

variable "network_interface_id" {
  description = "(Optional) An ID of a network interface"
  type        = "string"
  default     = ""
}
