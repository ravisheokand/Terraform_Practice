resource "azurerm_resource_group" "resource_group" {
  for_each = toset(var.rg_name)
  name     = each.value
  location = var.rg_location
}