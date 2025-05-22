resource "azurerm_storage_account" "ravistg" {
  name                     = var.storage_name
  resource_group_name      = var.resource_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}