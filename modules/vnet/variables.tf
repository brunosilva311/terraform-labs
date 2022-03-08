variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnets" {
  type = list(string)
  default = [
    {
      address_prefix = "10.0.1.0/24"
      name           = "subnet-1"
    },
    {
      address_prefix = "10.0.2.0/24"
      name           = "subnet-2"
    }
  ]
}

#variable "vnet_address_space" {
#  type = string
#}

#variable "vnet_address_space" {
#  type = string
#}