output "this_vpc_peering_connection_id" {
  description = "The ID of the VPC Peering Connection"
  value       = "${element(coalescelist(aws_vpc_peering_connection.this.*.id, list("")), 0)}"
}

output "this_vpc_peering_connection_accept_status" {
  description = "The status of the VPC Peering Connection request"
  value       = "${element(coalescelist(aws_vpc_peering_connection.this.*.accept_status, list("")), 0)}"
}
