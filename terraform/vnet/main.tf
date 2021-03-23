# Virtual network creation
resource "azurerm_virtual_network" "vnet_main" {
  name                = "${var.vnet_name}"
  address_space       = ["${var.vnet_cidr}"]
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  tags                = var.tags
}
