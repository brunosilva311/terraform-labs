data "azurerm_resource_group" "rg" {
  name = "rg01"
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnets" {
  name                 = lookup(element(var.subnets, count.index), "name")
  count                = length(var.subnets)
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefix       = lookup(element(var.subnets, count.index), "address_prefix")
}