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

  for_each = var.rgs

  name     = each.value["name"]
  location = each.value["location"]

#name     = "rg-tf-01"
#location = "eastus"
}

#module "rg-02" {
#  source = "./modules/rg"
#
#  name     = "rg-tf-02"
#  location = "eastus2"
#}

#module "rg-03" {
#  source = "./modules/rg"
#
#  name     = "rg-tf-03"
#  location = "westus"
#}