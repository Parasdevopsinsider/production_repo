terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "production"
    storage_account_name = "productionstg1"
    container_name = "productioncont"
    key = "production.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
}
