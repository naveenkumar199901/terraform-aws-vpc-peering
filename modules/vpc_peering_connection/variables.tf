variable "create" {
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
