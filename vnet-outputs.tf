# Virtual Network Outputs
## Virtual Network Name
output "virtual_network_name" {
  description = "Virtual Network Name"
  value       = azurerm_virtual_network.vnet.name
}
## Virtual Network ID
output "virtual_network_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.vnet.id
}

# Subnet Outputs (We will write for one ansible subnet and rest all we will ignore for now)
## Subnet Name 
output "ansible_subnet_name" {
  description = "ansibleTier Subnet Name"
  value       = azurerm_subnet.ansiblesubnet.name
}

## Subnet ID 
output "ansible_subnet_id" {
  description = "ansibleTier Subnet ID"
  value       = azurerm_subnet.ansiblesubnet.id
}

# Network Security Outputs
## ansible Subnet NSG Name 
output "ansible_subnet_nsg_name" {
  description = "ansible bTier Subnet NSG Name"
  value       = azurerm_network_security_group.ansible_subnet_nsg.name
}

## Web Subnet NSG ID 
output "ansible_subnet_nsg_id" {
  description = "ansibleTier Subnet NSG ID"
  value       = azurerm_network_security_group.ansible_subnet_nsg.id
}
