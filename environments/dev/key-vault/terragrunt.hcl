include {
  path = find_in_parent_folders()
}

dependency "resource_group" {
  config_path = "../resource-group"
}

terraform {
  source = "../../../modules/key-vault"
}

inputs = {
  resource_group_name     = dependency.resource_group.outputs.resource_group_name
  resource_group_location = dependency.resource_group.outputs.resource_group_location
  key_vault_name          = "qlty-dev-kv-eastus2"
  tenant_id               = "your-tenant-id"
}
