variable "resource_g" {}
variable "store_g" {}
variable "vn_g" {}
variable "sn_g" {}
variable "pip" {}
variable "nikku" {}

module "RG" {
  source = "../Child_module/azurerm_rg"
  rgs = var.resource_g
}

module "sto" {
  depends_on = [ module.RG ]
  source = "../Child_module/azurerm_storage"
  st = var.store_g
}

module "vn_g" {
  depends_on = [ module.RG ]
  source = "../Child_module/azurerm_vnet"
  vnet = var.vn_g
}

module "sub_g" {
  depends_on = [ module.vn_g ]
  source = "../Child_module/azurerm_subnet"
  snet = var.sn_g
}

module "PUB" {
  depends_on = [ module.RG ]
source = "../Child_module/azurerm_PIP"
mod_pip = var.pip

}

module "nica" {
depends_on = [ module.sub_g, module.PUB ]
 source = "../Child_module/azurerm_NIC"
 nics =  var.nikku
}