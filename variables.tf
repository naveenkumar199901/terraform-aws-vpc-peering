variable "create_vpc_peering_connection" {
  description = "Whether to create this resource or not"
  default     = true
}

variable "peer_owner_id" {
  description = "(Optional) The AWS account ID of the owner of the peer VPC"
  type        = "string"
  default     = ""
}

variable "peer_vpc_id" {
  description = "(Required) The ID of the VPC with which you are creating the VPC Peering Connection"
  type        = "string"
}

variable "vpc_id" {
  description = "(Required) The ID of the VPC with which you are creating the VPC Peering Connection"
  type        = "string"
}

variable "auto_accept" {
  description = "(Optional) Accept the peering (both VPCs need to be in the same AWS account)"
  type        = "string"
  default     = "true"
}

variable "peer_region" {
  description = "(Optional) The region of the accepter VPC of the [VPC Peering Connection]"
  type        = "string"
  default     = ""
}

variable "accepter" {
  description = "(Optional) - An optional configuration block that allows for VPC Peering Connection options to be set for the VPC that accepts the peering connection"
  type        = "list"
  default     = []
}

variable "requester" {
  description = "(Optional) - A optional configuration block that allows for VPC Peering Connection options to be set for the VPC that requests the peering connection"
  type        = "list"
  default     = []
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource"
  type        = "map"
  default     = {}
}

variable "accepter_route_table_ids" {
  description = " (Required) The IDs of the routing table"
  type        = "list"
}

variable "accepter_destination_cidr_block" {
  description = "(Optional) The destination CIDR block"
  type        = "string"
  default     = ""
}

variable "accepter_destination_ipv6_cidr_block" {
  description = "(Optional) The destination IPv6 CIDR block"
  type        = "string"
  default     = ""
}

variable "accepter_vpc_peering_connection_id" {
  description = "(Optional) An ID of a VPC peering connection"
  type        = "string"
  default     = ""
}

variable "accepter_egress_only_gateway_id" {
  description = "(Optional) An ID of a VPC Egress Only Internet Gateway"
  type        = "string"
  default     = ""
}

variable "accepter_gateway_id" {
  description = "(Optional) An ID of a VPC internet gateway or a virtual private gateway"
  type        = "string"
  default     = ""
}

variable "accepter_nat_gateway_id" {
  description = "(Optional) An ID of a VPC NAT gateway"
  type        = "string"
  default     = ""
}

variable "accepter_instance_id" {
  description = "(Optional) An ID of an EC2 instance"
  type        = "string"
  default     = ""
}

variable "accepter_network_interface_id" {
  description = "(Optional) An ID of a network interface"
  type        = "string"
  default     = ""
}

variable "requester_route_table_ids" {
  description = " (Required) The IDs of the routing table"
  type        = "list"
}

variable "requester_destination_cidr_block" {
  description = "(Optional) The destination CIDR block"
  type        = "string"
  default     = ""
}

variable "requester_destination_ipv6_cidr_block" {
  description = "(Optional) The destination IPv6 CIDR block"
  type        = "string"
  default     = ""
}

variable "requester_vpc_peering_connection_id" {
  description = "(Optional) An ID of a VPC peering connection"
  type        = "string"
  default     = ""
}

variable "requester_egress_only_gateway_id" {
  description = "(Optional) An ID of a VPC Egress Only Internet Gateway"
  type        = "string"
  default     = ""
}

variable "requester_gateway_id" {
  description = "(Optional) An ID of a VPC internet gateway or a virtual private gateway"
  type        = "string"
  default     = ""
}

variable "requester_nat_gateway_id" {
  description = "(Optional) An ID of a VPC NAT gateway"
  type        = "string"
  default     = ""
}

variable "requester_instance_id" {
  description = "(Optional) An ID of an EC2 instance"
  type        = "string"
  default     = ""
}

variable "requester_network_interface_id" {
  description = "(Optional) An ID of a network interface"
  type        = "string"
  default     = ""
}
