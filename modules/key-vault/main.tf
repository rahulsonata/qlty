provider "azurerm" {
  features {}
}

resource "azurerm_key_vault" "key_vault" {
  name                        = var.key_vault_name
  location                    = var.resource_group_location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"

  soft_delete_retention_days = 7
  purge_protection_enabled   = true
}
