terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.22.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "bd94205d-2b6f-45fb-ab4e-6a754f2a178d"
}

resource "azurerm_resource_group" "ravi" {
  name     = "RKS_rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "ravi" {
  name                     = "rksstorage"
  resource_group_name      = resource.azurerm_resource_group.ravi.name
  location                 = resource.azurerm_resource_group.ravi.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_account" "ravi1" {
  name                     = "rksstorage1"
  resource_group_name      = resource.azurerm_resource_group.ravi.name
  location                 = resource.azurerm_resource_group.ravi.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}