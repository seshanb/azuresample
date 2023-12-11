resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "time_sleep" "delay" {
  depends_on = [azurerm_resource_group.example]
  duration   = "60s"
}
