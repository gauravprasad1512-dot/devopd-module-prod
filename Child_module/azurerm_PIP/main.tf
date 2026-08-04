variable "mod_pip" {}
resource "azurerm_public_ip" "PIP_MOD" {
    for_each = var.mod_pip
name = each.value.name
sku = each.value.sku
location = each.value.location
resource_group_name = each.value.rg
allocation_method = each.value.alm

}