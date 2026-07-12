output "network_profiles_container_network_interface" {
  description = "Map of container_network_interface values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.container_network_interface }
}
output "network_profiles_container_network_interface_ids" {
  description = "Map of container_network_interface_ids values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.container_network_interface_ids }
}
output "network_profiles_location" {
  description = "Map of location values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.location }
}
output "network_profiles_name" {
  description = "Map of name values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.name }
}
output "network_profiles_resource_group_name" {
  description = "Map of resource_group_name values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.resource_group_name }
}
output "network_profiles_tags" {
  description = "Map of tags values across all network_profiles, keyed the same as var.network_profiles"
  value       = { for k, v in azurerm_network_profile.network_profiles : k => v.tags }
}

