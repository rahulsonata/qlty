include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/resource-group"
}

inputs = {
  resource_group_name     = "qlty-dev-rg-eastus2"
  resource_group_location = "eastus2"
}
