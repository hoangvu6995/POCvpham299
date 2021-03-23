# Create subnet IngressSubnetCIDR1
resource "azurerm_subnet" "subnet_IngressSubnetCIDR1" {
  name                 = "${var.subnet_IngressSubnetCIDR1}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 193)
}

# Create subnet IngressSubnetCIDR2
resource "azurerm_subnet" "subnet_IngressSubnetCIDR2" {
  name                 = "${var.subnet_IngressSubnetCIDR2}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 194)
}

# Create subnet EgressSubnetCIDR1
resource "azurerm_subnet" "subnet_EgressSubnetCIDR1" {
  name                 = "${var.subnet_EgressSubnetCIDR1}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 195)
}

# Create subnet EgressSubnetCIDR2
resource "azurerm_subnet" "subnet_EgressSubnetCIDR2" {
  name                 = "${var.subnet_EgressSubnetCIDR2}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 196)
}

# Create subnet ProdWebTierSubnetCIDR1
resource "azurerm_subnet" "subnet_ProdWebTierSubnetCIDR1" {
  name                 = "${var.subnet_ProdWebTierSubnetCIDR1}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 197)
}

# Create subnet ProdWebTierSubnetCIDR2
resource "azurerm_subnet" "subnet_ProdWebTierSubnetCIDR2" {
  name                 = "${var.subnet_ProdWebTierSubnetCIDR2}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 198)
}


# Create subnet UATWebTierSubnetCIDR1
resource "azurerm_subnet" "subnet_UATWebTierSubnetCIDR1" {
  name                 = "${var.subnet_UATWebTierSubnetCIDR1}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 199)
}

# Create subnet UATWebTierSubnetCIDR2
resource "azurerm_subnet" "subnet_UATWebTierSubnetCIDR2" {
  name                 = "${var.subnet_UATWebTierSubnetCIDR2}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 200)
}

# Create subnet kubernets prod
resource "azurerm_subnet" "subnet_PRODKubeSubnetCIDR" {
  name                 = "${var.subnet_PRODKubeSubnetCIDR}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 3, 1)
}

# Create subnet kubernets dev
resource "azurerm_subnet" "subnet_DEVKubeSubnetCIDR" {
  name                 = "${var.subnet_DEVKubeSubnetCIDR}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 3, 0)
}

# Create subnet jenkin
resource "azurerm_subnet" "subnet_jenkinSubnetCIDR" {
  name                 = "${var.subnet_jenkinSubnetCIDR}"
  resource_group_name = "${var.rg_name}"
  virtual_network_name = "${var.vnet_name}"
  address_prefix = 	cidrsubnet("${var.vnet_cidr}", 8, 225)
}
