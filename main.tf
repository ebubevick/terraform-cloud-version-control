terraform { 
  cloud { 
    
    organization = "ebubevick" 

    workspaces { 
      name = "test-app-workspace" 
    } 
  } 
}

# Azure provider configuration
provider "azurerm" {
  features {}
  subscription_id = var.subscription # Correct variable name for subscription
}

resource "azurerm_resource_group" "resource_group_name" {
  name     = var.resource_group_name
  location = var.location
}


## Public Module Registry

# Virtual Network Module
module "vnet-public-module" {
  source  = "Azure/vnet/azurerm"
  version = "4.1.0"

  vnet_name           = "public-${var.vnet_name}"
  resource_group_name = var.resource_group_name
  use_for_each        = true
  vnet_location       = var.location
  address_space       = var.address_space
  subnet_names        = var.subnet_names
  subnet_prefixes     = var.subnet_prefixes

  depends_on = [azurerm_resource_group.resource_group_name]
}