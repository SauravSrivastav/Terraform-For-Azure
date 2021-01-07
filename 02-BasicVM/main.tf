# valid for terraform version 0.14
provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"
    }
  }
}

resource "azurerm_resource_group" "test" { 
  name     = "1-8f05611b-playground-sandbox"
  location = var.location
}
