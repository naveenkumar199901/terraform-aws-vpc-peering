# AWS VPC peering Terraform module

Terraform module which creates VPC peering resources on AWS

These types of resources are supported:

* [VPC peering connection](https://www.terraform.io/docs/providers/aws/r/vpc_peering.html)
* [VPC route](https://www.terraform.io/docs/providers/aws/r/route.html)

Root module calls these modules which can also be used separately to create independent resources:

* [vpc_peering_connection](https://github.com/oded-dd/terraform-aws-vpc-peering/tree/master/modules/vpc_peering_connection) - creates VPC peering connection resource
* [route](https://github.com/oded-dd/terraform-aws-vpc-peering/tree/master/modules/route) - creates route resource

## Usage
```hcl
module "peering" {
  source = "github.com/oded-dd/terraform-aws-vpc-peering"

  # ... omitted
}
```

## Conditional creation

There is also a way to create route_accepter and/or route_requester:

```hcl
module "peering" {
  source = "github.com/oded-dd/terraform-aws-vpc-peering"

  # ... omitted
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| accepter | (Optional) - An optional configuration block that allows for VPC Peering Connection options to be set for the VPC that accepts the peering connection | list | `<list>` | no |
| accepter_destination_cidr_block | (Optional) The destination CIDR block | string | `` | no |
| accepter_destination_ipv6_cidr_block | (Optional) The destination IPv6 CIDR block | string | `` | no |
| accepter_egress_only_gateway_id | (Optional) An ID of a VPC Egress Only Internet Gateway | string | `` | no |
| accepter_gateway_id | (Optional) An ID of a VPC internet gateway or a virtual private gateway | string | `` | no |
| accepter_instance_id | (Optional) An ID of an EC2 instance | string | `` | no |
| accepter_nat_gateway_id | (Optional) An ID of a VPC NAT gateway | string | `` | no |
| accepter_network_interface_id | (Optional) An ID of a network interface | string | `` | no |
| accepter_route_table_ids | (Required) The IDs of the routing table | list | - | yes |
| accepter_vpc_peering_connection_id | (Optional) An ID of a VPC peering connection | string | `` | no |
| auto_accept | (Optional) Accept the peering (both VPCs need to be in the same AWS account) | string | `` | no |
| create_vpc_peering_connection | Whether to create this resource or not | string | `true` | no |
| peer_owner_id | (Optional) The AWS account ID of the owner of the peer VPC | string | `` | no |
| peer_region | (Optional) The region of the accepter VPC of the [VPC Peering Connection] | string | `` | no |
| peer_vpc_id | (Required) The ID of the VPC with which you are creating the VPC Peering Connection | string | `` | no |
| requester | (Optional) - A optional configuration block that allows for VPC Peering Connection options to be set for the VPC that requests the peering connection | list | `<list>` | no |
| requester_destination_cidr_block | (Optional) The destination CIDR block | string | `` | no |
| requester_destination_ipv6_cidr_block | (Optional) The destination IPv6 CIDR block | string | `` | no |
| requester_egress_only_gateway_id | (Optional) An ID of a VPC Egress Only Internet Gateway | string | `` | no |
| requester_gateway_id | (Optional) An ID of a VPC internet gateway or a virtual private gateway | string | `` | no |
| requester_instance_id | (Optional) An ID of an EC2 instance | string | `` | no |
| requester_nat_gateway_id | (Optional) An ID of a VPC NAT gateway | string | `` | no |
| requester_network_interface_id | (Optional) An ID of a network interface | string | `` | no |
| requester_route_table_ids | (Required) The IDs of the routing table | list | - | yes |
| requester_vpc_peering_connection_id | (Optional) An ID of a VPC peering connection | string | `` | no |
| tags | (Optional) A mapping of tags to assign to the resource | map | `<map>` | no |
| vpc_id | (Required) The ID of the VPC with which you are creating the VPC Peering Connection | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_vpc_peering_connection_accept_status | The status of the VPC Peering Connection request |
| this_vpc_peering_connection_id | The ID of the VPC Peering Connection |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Oded David](https://github.com/oded-dd).

## License

Apache 2 Licensed. See LICENSE for full details.
