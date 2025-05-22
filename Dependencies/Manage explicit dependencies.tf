terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5ddcc00c-a8a0-4839-8d63-c4f0a44646b7"
}

resource "azurerm_resource_group" "ravi" {
  name     = "z_RKS_rg"
  location = "West Europe"
}

resource "azurerm_resource_group" "ravi1" {
  name     = "z_RKS_rg1"
  location = "Central India"
}

resource "azurerm_storage_account" "ravistg" {
  depends_on = [azurerm_resource_group.ravi]
  name                     = "rksstorage987"
  resource_group_name      = "z_RKS_rg"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_account" "ravistg1" {
  depends_on = [azurerm_resource_group.ravi1]
  name                     = "rksstorage986"
  resource_group_name      = "z_RKS_rg1"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_account" "ravistg2" {
  depends_on = [azurerm_resource_group.ravi]
  name                     = "rksstorage985"
  resource_group_name      = "z_RKS_rg"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_account" "ravistg3" {
  depends_on = [azurerm_resource_group.ravi1]
  name                     = "rksstorage984"
  resource_group_name      = "z_RKS_rg1"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}