variable "rgs" {}
resource "azurerm_resource_group" "rg1" {
    for_each = var.rgs
        name = each.key
        location = each.value.Location

    }
