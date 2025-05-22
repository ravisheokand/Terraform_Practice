resource "azurerm_storage_account" "ravistg" {
  name                     = var.storage_name
  resource_group_name      = var.rg_name
  location                 = var.storage_location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}