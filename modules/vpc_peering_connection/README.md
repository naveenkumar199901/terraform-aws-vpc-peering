# aws_vpc_peering_connection

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| accepter | (Optional) - An optional configuration block that allows for VPC Peering Connection options to be set for the VPC that accepts the peering connection | list | `<list>` | no |
| auto_accept | (Optional) Accept the peering (both VPCs need to be in the same AWS account) | string | `` | no |
| create | Whether to create this resource or not | string | `true` | no |
| peer_owner_id | (Optional) The AWS account ID of the owner of the peer VPC | string | `` | no |
| peer_region | (Optional) The region of the accepter VPC of the [VPC Peering Connection] | string | `` | no |
| peer_vpc_id | (Required) The ID of the VPC with which you are creating the VPC Peering Connection | string | `` | no |
| requester | (Optional) - A optional configuration block that allows for VPC Peering Connection options to be set for the VPC that requests the peering connection | list | `<list>` | no |
| tags | (Optional) A mapping of tags to assign to the resource | map | `<map>` | no |
| vpc_id | (Required) The ID of the VPC with which you are creating the VPC Peering Connection | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_vpc_peering_connection_accept_status | The status of the VPC Peering Connection request |
| this_vpc_peering_connection_id | The ID of the VPC Peering Connection |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
