include {
  path = find_in_parent_folders()
}

dependency "resource_group" {
  config_path = "../resource-group"
}

terraform {
  source = "../../../modules/data-factory"
}

inputs = {
  resource_group_name      = dependency.resource_group.outputs.resource_group_name
  resource_group_location  = dependency.resource_group.outputs.resource_group_location
  data_factory_name        = "qlty-dev-data-factory-eastus2"
}
