# aws_route

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | (Optional) Whether to create this resource or not | string | `true` | no |
| destination_cidr_block | (Optional) The destination CIDR block | string | `` | no |
| destination_ipv6_cidr_block | (Optional) The destination IPv6 CIDR block | string | `` | no |
| egress_only_gateway_id | (Optional) An ID of a VPC Egress Only Internet Gateway | string | `` | no |
| gateway_id | (Optional) An ID of a VPC internet gateway or a virtual private gateway | string | `` | no |
| instance_id | (Optional) An ID of an EC2 instance | string | `` | no |
| nat_gateway_id | (Optional) An ID of a VPC NAT gateway | string | `` | no |
| network_interface_id | (Optional) An ID of a network interface | string | `` | no |
| route_table_ids | (Required) The IDs of the routing table | list | - | yes |
| vpc_peering_connection_id | (Optional) An ID of a VPC peering connection | string | `` | no |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
