resource "aws_route" "this" {
  count                       = "${length(var.route_table_ids)}"

  route_table_id              = "${element(var.route_table_ids, count.index)}"
  destination_cidr_block      = "${var.destination_cidr_block}"
  destination_ipv6_cidr_block = "${var.destination_ipv6_cidr_block}"
  vpc_peering_connection_id   = "${var.vpc_peering_connection_id}"
  egress_only_gateway_id      = "${var.egress_only_gateway_id}"
  gateway_id                  = "${var.gateway_id}"
  nat_gateway_id              = "${var.nat_gateway_id}"
  instance_id                 = "${var.instance_id}"
  network_interface_id        = "${var.network_interface_id}"
}
