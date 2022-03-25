# Resource-1: Create Public IP Address
resource "azurerm_public_ip" "ansible_linuxvm_publicip" {
  name                = "${local.name}-ansible-linuxvm-publicip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = "Standard"

}

