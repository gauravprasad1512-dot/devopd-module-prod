terraform {
  required_providers {
    azurerm = {
           source = "hashicorp/azurerm"
           version = "4.1.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name = "RG_GRV"
  #   storage_account_name = "grvstorage1512"
  #   container_name = "tfstate"
  #   key = "variable.tfstate"
    
  # }
}

provider "azurerm" {
    subscription_id = "4ba7f2d1-4e32-4eb0-b4a3-d6b2593f8246"
    features {}
    }
  