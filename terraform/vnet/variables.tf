variable "vnet_name" {
  description = "Name of virtualnetwork"
}

variable "vnet_cidr" {
  description = "CIDR of virtualnetwork"
}

variable "location" {
  description = "Location of resource group"
}

variable "rg_name" {
  description = "Name of resource group"
}

variable "tags" {
   type = map
   description = "Tags of resource"
}
