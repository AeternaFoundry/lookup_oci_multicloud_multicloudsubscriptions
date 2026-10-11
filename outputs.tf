output "multicloud_multicloudsubscriptions_lookup_id" {
  description = "Map of id values across all multicloud_multicloudsubscriptions_lookup, keyed the same as var.multicloud_multicloudsubscriptions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_multicloud_multicloudsubscriptions.multicloud_multicloudsubscriptions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "multicloud_multicloudsubscriptions_lookup_compartment_id" {
  description = "Map of compartment_id values across all multicloud_multicloudsubscriptions_lookup, keyed the same as var.multicloud_multicloudsubscriptions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_multicloud_multicloudsubscriptions.multicloud_multicloudsubscriptions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "multicloud_multicloudsubscriptions_lookup_display_name" {
  description = "Map of display_name values across all multicloud_multicloudsubscriptions_lookup, keyed the same as var.multicloud_multicloudsubscriptions_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_multicloud_multicloudsubscriptions.multicloud_multicloudsubscriptions_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "multicloud_multicloudsubscriptions_lookup_filter" {
  description = "Map of filter values across all multicloud_multicloudsubscriptions_lookup, keyed the same as var.multicloud_multicloudsubscriptions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_multicloud_multicloudsubscriptions.multicloud_multicloudsubscriptions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "multicloud_multicloudsubscriptions_lookup_limit" {
  description = "Map of limit values across all multicloud_multicloudsubscriptions_lookup, keyed the same as var.multicloud_multicloudsubscriptions_lookup except keys with no limit are omitted"
  value       = { for k, v in data.oci_multicloud_multicloudsubscriptions.multicloud_multicloudsubscriptions_lookup : k => v.limit if v.limit != null }
}
output "multicloud_multicloudsubscriptions_lookup_multicloud_subscription_collection" {
  description = "Map of multicloud_subscription_collection values across all multicloud_multicloudsubscriptions_lookup, keyed the same as var.multicloud_multicloudsubscriptions_lookup except keys with no multicloud_subscription_collection are omitted"
  value       = { for k, v in data.oci_multicloud_multicloudsubscriptions.multicloud_multicloudsubscriptions_lookup : k => v.multicloud_subscription_collection if v.multicloud_subscription_collection != null && length(v.multicloud_subscription_collection) > 0 }
}

