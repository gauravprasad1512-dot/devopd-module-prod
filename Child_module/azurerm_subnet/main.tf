variable "snet" {}

resource "azurerm_subnet" "snet" {
  for_each = var.snet
  name = each.key
  resource_group_name = each.value.rg
  virtual_network_name = each.value.vnet
  address_prefixes = each.value.add
  
}