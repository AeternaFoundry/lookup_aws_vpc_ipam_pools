output "vpc_ipam_pools_lookup_id" {
  description = "Map of id values across all vpc_ipam_pools_lookup, keyed the same as var.vpc_ipam_pools_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pools.vpc_ipam_pools_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpc_ipam_pools_lookup_filter" {
  description = "Map of filter values across all vpc_ipam_pools_lookup, keyed the same as var.vpc_ipam_pools_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pools.vpc_ipam_pools_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "vpc_ipam_pools_lookup_ipam_pools" {
  description = "Map of ipam_pools values across all vpc_ipam_pools_lookup, keyed the same as var.vpc_ipam_pools_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pools.vpc_ipam_pools_lookup : k => v.ipam_pools if v.ipam_pools != null && length(v.ipam_pools) > 0 }
}
output "vpc_ipam_pools_lookup_region" {
  description = "Map of region values across all vpc_ipam_pools_lookup, keyed the same as var.vpc_ipam_pools_lookup"
  value       = { for k, v in data.aws_vpc_ipam_pools.vpc_ipam_pools_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

