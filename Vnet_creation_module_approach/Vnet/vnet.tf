resource "azurerm_virtual_network" "virtual_network" {
  for_each            = var.vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  subnet {
    name             = each.value.subnet.name
    address_prefixes = each.value.subnet.address_prefixes
  }
}