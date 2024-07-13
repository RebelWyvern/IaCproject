variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "student-rg"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "eastus"
}

variable "vm_admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "vm_admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}
