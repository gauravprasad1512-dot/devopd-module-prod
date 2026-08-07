resource_g = {
  RG1 = {
    name = "RG_GRV"
    Location = "centralIndia"
}
}

store_g = {

  grv15122026st01 = {

    rg  = "RG_GRV"
    loc = "Central India"
    acc = "Standard"
    rep = "LRS"

  }

}

vn_g = {
    vnet_grv = {
     add = ["10.0.0.0/24"]
     loc = "centralIndia"
     rg = "RG_GRV"
    }
}


sn_g = {
backend ={
  rg = "RG_GRV"
  vnet = "vnet_grv"
  add = ["10.0.0.0/25"]  
}

frontend ={
  rg = "RG_GRV"
  vnet = "vnet_grv"
  add = ["10.0.0.128/25"]  
}

}


pip=  {
mod_pip = {
  name = "pub_IP"
  sku = "Standard"
 location = "centralIndia"
rg = "RG_GRV"
alm = "Static"
}
mod_pip2 = {
  name = "pub_IP2"
  sku = "Standard"
 location = "centralIndia"
rg = "RG_GRV"
alm = "Static"
}
}


nikku ={
    nic1 = {
        name = "frontend_nic"
        location = "centralindia"
        rg = "RG_GRV"
        nam = "intern"
        subnetname ="frontend"
        vnetname = "vnet_grv"
        pubname = "pub_IP"
    }

       nic2 = {
        name = "backend_nic"
        location = "centralindia"
        rg = "RG_GRV"
        nam = "intern1"
        subnetname ="backend"
        vnetname = "vnet_grv"
        pubname = "pub_IP2"
    } 
}


vir = {

  vm1 = {
    name = "frontend-vm"
    rg = "RG_GRV"
    loc = "centralIndia"
    size = "Standard_B2s"
    admin_username      = "ergpaua"
    admin_password    = "Grv@1512"
    nic_name= "frontend_nic"
}
vm2 = {
    name = "backend-vm"
    rg = "RG_GRV"
    loc = "centralIndia"
    size = "Standard_B2s"
    admin_username      = "ergpaua"
    admin_password    = "Grv@1512"
    nic_name= "backend_nic"
}
}