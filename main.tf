resource "azurerm_network_profile" "network_profiles" {
  for_each = var.network_profiles

  location            = each.value.location
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  tags                = each.value.tags

  container_network_interface {
    ip_configuration {
      name      = each.value.container_network_interface.ip_configuration.name
      subnet_id = each.value.container_network_interface.ip_configuration.subnet_id
    }
    name = each.value.container_network_interface.name
  }
}

