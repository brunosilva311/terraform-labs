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