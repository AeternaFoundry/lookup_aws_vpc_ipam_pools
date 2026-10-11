variable "vpc_ipam_pools_lookup" {
  description = <<EOT
Map of vpc_ipam_pools_lookup, attributes below
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

