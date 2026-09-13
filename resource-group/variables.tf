variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string

  validation {
    condition     = length(trimspace(var.resource_group_name)) >= 3
    error_message = "Resource group name must contain at least 3 characters."
  }
}