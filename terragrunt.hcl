remote_state {
  backend = "azurerm"
  config = {
    storage_account_name = "yourstorageaccount"
    container_name       = "tfstate"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
  }
}
