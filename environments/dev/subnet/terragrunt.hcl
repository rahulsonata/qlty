include {
  path = find_in_parent_folders()
}

dependency "resource_group" {
  config_path = "../resource-group"
}

terraform {
  source = "../../../modules/subnet"
}

inputs = {
  resource_group_name      = dependency.resource_group.outputs.resource_group_name
  resource_group_location  = dependency.resource_group.outputs.resource_group_location
  vnet_name                = "qlty-dev-vnet"
  address_space            = ["10.8.0.0/16"]
  subnet_name              = "qlty-subnet-dev"
  subnet_address_prefixes  = ["10.8.4.0/25"]
}
