output "rg_name" {
  value = "${azurerm_resource_group.rg_main.name}"
}

output "location" {
  value = "${azurerm_resource_group.rg_main.location}"
}

output "tags" {
  value = "${azurerm_resource_group.rg_main.tags}"
}
