resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "null_resource" "previous" {}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "60s"
}

resource "null_resource" "next" {
  depends_on = [time_sleep.wait_30_seconds]
}
