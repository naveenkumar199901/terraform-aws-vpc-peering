resource "aws_vpc_peering_connection" "this" {
  count         = "${var.create ? 1 : 0}"

  peer_owner_id = "${var.peer_owner_id}"
  peer_vpc_id   = "${var.peer_vpc_id}"
  vpc_id        = "${var.vpc_id}"

  auto_accept   = "${var.auto_accept}"
  peer_region   = "${var.peer_region}"

  accepter      = "${var.accepter}"
  requester     = "${var.requester}"

  tags          = "${merge(var.tags, map("Requester", format("%s", var.vpc_id)), map("Accepter", format("%s", var.peer_vpc_id)))}"
}
