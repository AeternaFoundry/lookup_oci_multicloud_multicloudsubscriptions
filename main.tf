data "oci_multicloud_multicloudsubscriptions" "multicloud_multicloudsubscriptions_lookup" {
  for_each = var.multicloud_multicloudsubscriptions_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  limit          = each.value.limit

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

