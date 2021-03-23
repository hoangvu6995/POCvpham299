variable "rg_name" {
  description = "Name of resource group"
}

variable "location" {
  description = "Location of resource group"
}

variable "tags" {
    type = map
	description = "Tags of resource"
}
