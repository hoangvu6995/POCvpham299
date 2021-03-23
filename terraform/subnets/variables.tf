variable "subnet_IngressSubnetCIDR1" {
  description = "Name of IngressSubnetCIDR1"
}

variable "subnet_IngressSubnetCIDR2" {
  description = "Name of IngressSubnetCIDR2"
}

variable "subnet_EgressSubnetCIDR1" {
  description = "Name of EgressSubnetCIDR1"
}

variable "subnet_EgressSubnetCIDR2" {
  description = "Name of EgressSubnetCIDR2"
}

variable "subnet_ProdWebTierSubnetCIDR1" {
  description = "Name of ProdWebTierSubnetCIDR1"
}

variable "subnet_ProdWebTierSubnetCIDR2" {
  description = "Name of ProdWebTierSubnetCIDR2"
}

variable "subnet_UATWebTierSubnetCIDR1" {
  description = "Name of UATWebTierSubnetCIDR1"
}

variable "subnet_UATWebTierSubnetCIDR2" {
  description = "Name of UATWebTierSubnetCIDR2"
}

variable "subnet_PRODKubeSubnetCIDR" {
  description = "Name of PRODKubeSubnetCIDR"
}

variable "subnet_DEVKubeSubnetCIDR" {
  description = "Name of DEVKubeSubnetCIDR"
}

variable "subnet_jenkinSubnetCIDR" {
  description = "Name of jenkinSubnetCIDR"
}

variable "vnet_name" {
  description = "Name of virtualnetwork"
}

variable "vnet_cidr" {
  description = "CIDR of virtualnetwork"
}

variable "rg_name" {
  description = "Name of resource group"
}
