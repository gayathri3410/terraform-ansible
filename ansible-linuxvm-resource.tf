
# Resource: Azure Linux Virtual Machine
resource "azurerm_linux_virtual_machine" "ansible_linuxvm" {
  name = "${local.name}-ansible-linuxvm"
  #computer_name = "ansible-linux-vm" # Hostname of the VM (Optional)
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = var.ansible_linuxvm_size
  network_interface_ids = [azurerm_network_interface.ansible_linuxvm_nic.id]

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_disk {
    name                 = "linux-vm-disk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

  }

  computer_name  = var.ansible_computer_name
  admin_username = var.ansible_linuxvm_admin_user
  admin_password = var.ansible_password

  disable_password_authentication = false

}
