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
    subscription_id = "b6450496-d1f8-4419-beae-6c1f8299257e"
    features {}
    }
  