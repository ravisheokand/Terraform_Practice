module "resource_group" {
  source = "./resource_group"
  resource_name = var.resource_name
  location = var.location
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "./storage_account"
  storage_name = var.storage_name
  location = var.location
  resource_name = var.resource_name
}