# Virtual Network, Subnets and Subnet NSG's

## Virtual Network
variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
  default     = "vnet-default"
}
variable "vnet_address_space" {
  description = "Virtual Network address_space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}


# Web Subnet Name
variable "ansible_subnet_name" {
  description = "Virtual Network ansible Subnet Name"
  type        = string
  default     = "ansiblesubnet"
}
# Web Subnet Address Space
variable "ansible_subnet_address" {
  description = "Virtual Network ansible Subnet Address Spaces"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}





