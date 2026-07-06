output "network_profiles" {
  description = "All network_profile resources"
  value       = azurerm_network_profile.network_profiles
}
output "network_profiles_container_network_interface" {
  description = "List of container_network_interface values across all network_profiles"
  value       = [for k, v in azurerm_network_profile.network_profiles : v.container_network_interface]
}
output "network_profiles_container_network_interface_ids" {
  description = "List of container_network_interface_ids values across all network_profiles"
  value       = [for k, v in azurerm_network_profile.network_profiles : v.container_network_interface_ids]
}
output "network_profiles_location" {
  description = "List of location values across all network_profiles"
  value       = [for k, v in azurerm_network_profile.network_profiles : v.location]
}
output "network_profiles_name" {
  description = "List of name values across all network_profiles"
  value       = [for k, v in azurerm_network_profile.network_profiles : v.name]
}
output "network_profiles_resource_group_name" {
  description = "List of resource_group_name values across all network_profiles"
  value       = [for k, v in azurerm_network_profile.network_profiles : v.resource_group_name]
}
output "network_profiles_tags" {
  description = "List of tags values across all network_profiles"
  value       = [for k, v in azurerm_network_profile.network_profiles : v.tags]
}

