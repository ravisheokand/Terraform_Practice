variable "rg_name" {
    type        = list(string)
  default     = [
    "ravi",
    "ankit",
    "sanjay",
    "raghu",
    "raj",
  ]
}

variable "rg_location" {
  type        = string
  description = "Azure region"
  default     = "West Europe"
}