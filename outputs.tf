output "this_vpc_peering_connection_id" {
  description = "The ID of the VPC Peering Connection"
  value       = "${module.vpc_peering_connection.id}"
}

output "this_vpc_peering_connection_accept_status" {
  description = "The status of the VPC Peering Connection request"
  value       = "${module.vpc_peering_connection.accept_status}"
}
