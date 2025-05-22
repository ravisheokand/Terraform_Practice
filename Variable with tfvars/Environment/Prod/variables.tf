variable "rg_name" {
  type        = string
  description = "Name of the resource group"
  default     = "z_RKS_07_rg"
}

variable "rg_location" {
  type        = string
  description = "Azure region"
  default     = "West Europe"
}

variable "storage_name" {
  type        = string
  description = "Name of the resource group"
  default     = "rks050525"
}

variable "storage_location" {
  type        = string
  description = "Azure region"
  default     = "West Europe"
}