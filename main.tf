data "aws_vpc_ipam_pools" "vpc_ipam_pools_lookup" {
  for_each = var.vpc_ipam_pools_lookup

  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

