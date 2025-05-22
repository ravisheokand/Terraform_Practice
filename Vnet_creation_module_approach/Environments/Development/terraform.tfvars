rg_names = {
  rg0 = {
    "name"     = "Arg-ravi11"
    "location" = "West Europe"
  }
  rg1 = {
    "name"     = "Arg-ravi22"
    "location" = "Canada East"
  }
  rg2 = {
    "name"     = "Arg-ravi33"
    "location" = "Central India"
  }
}

storage_account = {
  storage1 = {
    "name"                     = "rksstorage09"
    "location"                 = "West Europe"
    "resource_group_name"      = "Arg-ravi11"
    "account_tier"             = "Standard"
    "account_replication_type" = "LRS"
  }
  storage2 = {
    "name"                     = "rksstorage08"
    "location"                 = "Canada East"
    "resource_group_name"      = "Arg-ravi22"
    "account_tier"             = "Standard"
    "account_replication_type" = "LRS"
  }
  storage3 = {
    "name"                     = "rksstorage07"
    "location"                 = "Central India"
    "resource_group_name"      = "Arg-ravi33"
    "account_tier"             = "Standard"
    "account_replication_type" = "LRS"
  }
}

vnet = {
  vnet1 = {
    "name"                = "vnet9"
    "location"            = "West Europe"
    "resource_group_name" = "Arg-ravi11"
    "address_space"       = ["10.1.0.0/16"]
    subnet = {
      name             = "subnet1"
      address_prefixes = ["10.1.0.0/28"]
    }
  }
  vnet2 = {
    "name"                = "vnet8"
    "location"            = "Canada East"
    "resource_group_name" = "Arg-ravi22"
    "address_space"       = ["10.2.0.0/16"]
    subnet = {
      name             = "subnet2"
      address_prefixes = ["10.2.0.0/28"]
    }
  }
  vnet3 = {
    "name"                = "vnet7"
    "location"            = "Central India"
    "resource_group_name" = "Arg-ravi33"
    "address_space"       = ["10.3.0.0/16"]
    subnet = {
      name             = "subnet3"
      address_prefixes = ["10.3.0.0/28"]
    }
  }
}