## Public IP Address
output "ansible_linuxvm_public_ip" {
  description = "ansible Linux VM Public Address"
  value       = azurerm_public_ip.ansible_linuxvm_publicip.ip_address
}

# Network Interface Outputs
## Network Interface ID
output "ansible_linuxvm_network_interface_id" {
  description = "ansible Linux VM Network Interface ID"
  value       = azurerm_network_interface.ansible_linuxvm_nic.id
}
## Network Interface Private IP Addresses
output "ansible_linuxvm_network_interface_private_ip_addresses" {
  description = "ansible Linux VM Private IP Addresses"
  value       = [azurerm_network_interface.ansible_linuxvm_nic.private_ip_addresses]
}

# Linux VM Outputs

## Virtual Machine Public IP
output "ansible_linuxvm_public_ip_address" {
  description = "ansible Linux Virtual Machine Public IP"
  value       = azurerm_linux_virtual_machine.ansible_linuxvm.public_ip_address
}


## Virtual Machine Private IP
output "ansible_linuxvm_private_ip_address" {
  description = "ansible Linux Virtual Machine Private IP"
  value       = azurerm_linux_virtual_machine.ansible_linuxvm.private_ip_address
}
## Virtual Machine 128-bit ID
output "ansible_linuxvm_virtual_machine_id_128bit" {
  description = "ansible Linux Virtual Machine ID - 128-bit identifier"
  value       = azurerm_linux_virtual_machine.ansible_linuxvm.virtual_machine_id
}
## Virtual Machine ID
output "ansible_linuxvm_virtual_machine_id" {
  description = "ansible Linux Virtual Machine ID "
  value       = azurerm_linux_virtual_machine.ansible_linuxvm.id
}




