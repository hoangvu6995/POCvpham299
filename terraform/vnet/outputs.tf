output "vnet_name" {
  value = "${azurerm_virtual_network.vnet_main.name}"
}

output "vnet_cidr" {
  value = "${var.vnet_cidr}"
}
