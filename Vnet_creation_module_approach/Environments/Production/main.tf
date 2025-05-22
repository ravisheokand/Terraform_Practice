module "resource_group" {
  source   = "../../Resource_group"
  rg_names = var.rg_names
}

module "storage_account" {
  depends_on      = [module.resource_group]
  source          = "../../Storage"
  storage_account = var.storage_account
}

module "vnet" {
  depends_on = [module.resource_group]
  source     = "../../Vnet"
  vnet       = var.vnet
}
