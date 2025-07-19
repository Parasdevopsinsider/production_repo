terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "production"
    storage_account_name = "productionstg"
    container_name = "productioncont"
    key = "production.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "def13e29-f65a-496b-b10e-3cffca9a480f"
}