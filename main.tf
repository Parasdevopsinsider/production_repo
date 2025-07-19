resource "azurerm_resource_group" "rg" {
  name     = "rg_preprod"
  location = "eastus"
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg_prod"
  location = "eastus"
}

resource "azurerm_storage_account" "stgpreprod" {
  name                     = "stpreprod"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "ZRS"
}

resource "azurerm_storage_account" "stgprod" {
    depends_on = [azurerm_resource_group.rg1]
    name = "prodst"
    resource_group_name = "rg_prod"
    location = "eastus"
    account_tier = "Standard"
    account_replication_type = "LRS"

}