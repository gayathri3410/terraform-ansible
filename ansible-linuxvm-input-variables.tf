# Linux VM Input Variables Placeholder file.
variable "ansible_linuxvm_size" {
  description = " Linux VM Size"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "ansible_linuxvm_admin_user" {
  description = " Linux VM Admin Username"
  type        = string
  default     = "azureuser"
}
variable "ansible_password" {
  description = "Linux VM Admin password"
  type        = string
}
variable "ansible_computer_name" {
  description = " Linux VM computer_name"
  type        = string

}