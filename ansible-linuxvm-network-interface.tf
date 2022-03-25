# Resource-2: Create Network Interface
resource "azurerm_network_interface" "ansible_linuxvm_nic" {
  name                = "${local.name}-ansible-linuxvm-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "ansible-linuxvm-ip-1"
    subnet_id                     = azurerm_subnet.ansiblesubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ansible_linuxvm_publicip.id
  }
}

