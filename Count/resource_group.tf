resource "azurerm_resource_group" "ravi" {
  count = 3
  name     = "rg-RKS${count.index}"
  location = "West Europe"
}