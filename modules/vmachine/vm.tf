resource "azurerm_network_interface" "nic01" {
  name                = var.nic01_name
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.sub_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm01" {
  name                = var.vm01_name
  resource_group_name = var.rg_name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password   	  = "Jai@2025@12345#"
  disable_password_authentication = "false"
  network_interface_ids = [
    azurerm_network_interface.nic01.id,
  ]


    
  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  
  depends_on = [
   
		azurerm_network_interface.nic01
  
  ]
}