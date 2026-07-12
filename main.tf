resource "azurerm_network_profile" "network_profiles" {
  for_each = var.network_profiles

  location            = each.value.location
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  tags                = each.value.tags

  container_network_interface {
    dynamic "ip_configuration" {
      for_each = each.value.container_network_interface.ip_configuration
      content {
        name      = ip_configuration.value.name
        subnet_id = ip_configuration.value.subnet_id
      }
    }
    name = each.value.container_network_interface.name
  }
}

