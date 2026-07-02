terraform {
  
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "miladtfstate"
    container_name       = "tfstate"
    key                  = "cicd.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}