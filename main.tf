module "vpc_peering_connection" {
  source        = "./modules/vpc_peering_connection"

  create        = "${var.create_vpc_peering_connection}"

  peer_owner_id = "${var.peer_owner_id}"
  peer_vpc_id   = "${var.peer_vpc_id}"
  vpc_id        = "${var.vpc_id}"

  auto_accept   = "${var.auto_accept}"
  peer_region   = "${var.peer_region}"

  accepter      = "${var.accepter}"
  requester     = "${var.requester}"

  tags          = "${var.tags}"
}

module "route_accepter" {
  source                      = "./modules/route"

  route_table_ids             = ["${var.accepter_route_table_ids}"]
  destination_cidr_block      = "${var.accepter_destination_cidr_block}"
  destination_ipv6_cidr_block = "${var.accepter_destination_ipv6_cidr_block}"
  vpc_peering_connection_id   = "${module.vpc_peering_connection.this_vpc_peering_connection_id}"
  egress_only_gateway_id      = "${var.accepter_egress_only_gateway_id}"
  gateway_id                  = "${var.accepter_gateway_id}"
  nat_gateway_id              = "${var.accepter_nat_gateway_id}"
  instance_id                 = "${var.accepter_instance_id}"
  network_interface_id        = "${var.accepter_network_interface_id}"
}

module "route_requester" {
  source                      = "./modules/route"

  route_table_ids              = ["${var.requester_route_table_ids}"]
  destination_cidr_block      = "${var.requester_destination_cidr_block}"
  destination_ipv6_cidr_block = "${var.requester_destination_ipv6_cidr_block}"
  vpc_peering_connection_id   = "${module.vpc_peering_connection.this_vpc_peering_connection_id}"
  egress_only_gateway_id      = "${var.requester_egress_only_gateway_id}"
  gateway_id                  = "${var.requester_gateway_id}"
  nat_gateway_id              = "${var.requester_nat_gateway_id}"
  instance_id                 = "${var.requester_instance_id}"
  network_interface_id        = "${var.requester_network_interface_id}"
}
