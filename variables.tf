variable "multicloud_multicloudsubscriptions_lookup" {
  description = <<EOT
Map of multicloud_multicloudsubscriptions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - limit
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    limit          = optional(number)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

