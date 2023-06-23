data "azurerm_resource_groups" "example" {
}

output "resource_group_names" {
  value = data.azurerm_resource_groups.example.names
}
