include {
  path = find_in_parent_folders()
}

dependency "resource_group" {
  config_path = "../resource-group"
}

terraform {
  source = "../../../modules/storage-account"
}

inputs = {
  resource_group_name     = dependency.resource_group.outputs.resource_group_name
  resource_group_location = dependency.resource_group.outputs.resource_group_location
  storage_account_name    = "qltydevsteastus2"
}
