variable "rgs" {
  type = map(any)
  default = {
    rg1 = {
      name     = "rg01"
      location = "eastus"
    }
    rg2 = {
      name     = "rg02"
      location = "westus"
    }
    rg3 = {
      name     = "rg03"
      location = "westus2"
    }
  }
}

variable "vnets" {
  type = map(any)
  default = {
    vnet1 = {
      vnet_name     = "vnet01"
      vnet_address_space = ["10.0.0.0/16"]
    }
    vnet2 = {
      vnet_name     = "vnet02"
      vnet_address_space = ["10.1.0.0/16"]
    }
    vnet3 = {
      vnet_name     = "vnet03"
      vnet_address_space = ["10.2.0.0/16"]
    }
  }
}