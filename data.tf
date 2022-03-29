data "azurerm_virtual_network" "vnet" {
  name                = "Ansible-dev-vnet"
  resource_group_name = "Ansible-dev-rg"
}

data "azurerm_resource_group" "rg" {
  name = "Ansible-dev-rg"
}
data "azurerm_subnet" "windowssubnet" {
  name                 = "Ansible-dev-vnet-ansiblesubnet"
  virtual_network_name = "Ansible-dev-vnet"
  resource_group_name  = "Ansible-dev-rg"
}

resource "azurerm_public_ip" "windowsvm_publicip" {
  name                = "windowsvm-publicip"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_network_interface" "windowsvm_nic" {
  name                = "windowsvm-nic"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "windowsvm-ip-1"
    subnet_id                     = data.azurerm_subnet.windowssubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.windowsvm_publicip.id
  }
}

resource "azurerm_windows_virtual_machine" "VirtualMachine" {
  name                = "VirtualMachine"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  size                = var.ansible_linuxvm_size
  computer_name       = var.ansible_computer_name
  admin_username      = var.ansible_linuxvm_admin_user
  admin_password      = var.ansible_password
  # size                  = "Standard_D2s_v3"
  # admin_username        = "azureuser"
  # admin_password        = "Azureuser15"
  # computer_name         = "hostname"
  network_interface_ids = [azurerm_network_interface.windowsvm_nic.id]

  os_disk {

    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
