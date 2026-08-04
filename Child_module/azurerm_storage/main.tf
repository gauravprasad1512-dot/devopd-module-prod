variable "st" {}

resource "azurerm_storage_account" "st1" {
for_each = var.st

name = each.key
resource_group_name = each.value.rg
location = each.value.loc
account_tier =  each.value.acc
account_replication_type = each.value.rep
  
}