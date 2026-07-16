output "network_profiles_id" {
  description = "Map of id values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_profiles_container_network_interface" {
  description = "Map of container_network_interface values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.container_network_interface if v.container_network_interface != null && length(v.container_network_interface) > 0 }
}
output "network_profiles_container_network_interface_ids" {
  description = "Map of container_network_interface_ids values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.container_network_interface_ids if v.container_network_interface_ids != null && length(v.container_network_interface_ids) > 0 }
}
output "network_profiles_location" {
  description = "Map of location values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.location if v.location != null && length(v.location) > 0 }
}
output "network_profiles_name" {
  description = "Map of name values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_profiles_resource_group_name" {
  description = "Map of resource_group_name values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "network_profiles_tags" {
  description = "Map of tags values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

