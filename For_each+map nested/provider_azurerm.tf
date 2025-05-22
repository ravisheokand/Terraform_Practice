terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0" 
    }
  }
  backend "azurerm" {
    resource_group_name  = "B17G15"
    storage_account_name = "stg15b17"
    container_name       = "b17g15"
    key                  = "rks_May.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "52f0f33a-bdec-47ad-b5b8-439147bafca4"
}