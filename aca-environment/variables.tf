variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "centralindia"
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "vnet_address_space" {
  description = "Virtual Network address space"
  type        = list(string)

  default = [
    "10.0.0.0/16"
  ]
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Subnet address prefixes"
  type        = list(string)

  default = [
    "10.0.1.0/24"
  ]
}

variable "log_analytics_name" {
  description = "Log Analytics Workspace name"
  type        = string
}

variable "managed_identity_name" {
  description = "User Assigned Managed Identity name"
  type        = string
}

variable "container_app_environment_name" {
  description = "Azure Container Apps Environment name"
  type        = string
}