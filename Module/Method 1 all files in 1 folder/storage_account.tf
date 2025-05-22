resource "azurerm_storage_account" "ravistg" {
  depends_on               = [azurerm_resource_group.ravi]
  name                     = "rksstorage987"
  resource_group_name      = "z_RKS_rg"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}