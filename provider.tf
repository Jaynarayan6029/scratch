terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}


provider "azurerm" {
  subscription_id = "f2f1879f-d740-43db-b3de-75ecbaaf0273"
  features {}
}
