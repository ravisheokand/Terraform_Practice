terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
  backend "azurerm" {
  resource_group_name  = "B17_G15"
  storage_account_name = "stb17g15"
  container_name       = "b17g15"
  key                  = "rks3.terraform.tfstate"
  }
}
provider "azurerm" {

  features {}
  subscription_id = "5ddcc00c-a8a0-4839-8d63-c4f0a44646b7"
}