resource "azurerm_storage_account" "ravistg" {
  name                     = "rksstorage007"
  resource_group_name      = "z_RKS_07_rg"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}