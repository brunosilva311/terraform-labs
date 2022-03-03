terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = ""
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg" {
  source = "./modules/rg"

  name     = "rg-tf-01"
  location = "eastus"
}