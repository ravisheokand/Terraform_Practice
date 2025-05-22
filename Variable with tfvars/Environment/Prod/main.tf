module "resource_group" {
  source = "./resource_group"
  rg_name = var.rg_name
  rg_location = var.rg_location
}

module "storage_account" {
  source     = "./storage_account"
  storage_name = var.storage_name
  storage_location = var.storage_location
  rg_name = var.rg_name
  depends_on = [module.resource_group]
}