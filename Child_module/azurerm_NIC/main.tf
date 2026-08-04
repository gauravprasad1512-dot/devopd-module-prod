variable "nics" {}

data "azurerm_subnet" "sub" {
    for_each = var.nics
    name = each.value.subnetname
    virtual_network_name = each.value.vnetname
    resource_group_name = each.value.rg
  }

  data "azurerm_public_ip" "pip" {
    for_each = var.nics
    name = each.value.pubname
    resource_group_name = each.value.rg
  }


resource "azurerm_network_interface" "NIC_mod" {
  for_each = var.nics
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.rg

  ip_configuration {
    
    name = each.value.nam
    subnet_id = data.azurerm_subnet.sub[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.pip[each.key].id
  }
}