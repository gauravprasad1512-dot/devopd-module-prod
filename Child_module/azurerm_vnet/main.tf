variable "vnet" {}
resource "azurerm_virtual_network" "vn" {
  
  for_each = var.vnet
name = each.key
address_space = each.value.add
location = each.value.loc
resource_group_name = each.value.rg

}