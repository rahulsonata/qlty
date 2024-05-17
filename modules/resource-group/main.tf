provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "qlty_dev_rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
