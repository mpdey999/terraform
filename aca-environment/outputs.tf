output "resource_group_name" {
  description = "Created Azure Resource Group name"
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "Created Azure Resource Group ID"
  value       = azurerm_resource_group.this.id
}

output "vnet_name" {
  description = "Created Virtual Network name"
  value       = azurerm_virtual_network.this.name
}

output "vnet_id" {
  description = "Created Virtual Network ID"
  value       = azurerm_virtual_network.this.id
}

output "subnet_name" {
  description = "Created Subnet name"
  value       = azurerm_subnet.this.name
}

output "subnet_id" {
  description = "Created Subnet ID"
  value       = azurerm_subnet.this.id
}

output "log_analytics_workspace_name" {
  description = "Log Analytics Workspace name"
  value       = azurerm_log_analytics_workspace.this.name
}

output "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID"
  value       = azurerm_log_analytics_workspace.this.id
}

output "managed_identity_name" {
  description = "Managed Identity name"
  value       = azurerm_user_assigned_identity.this.name
}

output "managed_identity_id" {
  description = "Managed Identity resource ID"
  value       = azurerm_user_assigned_identity.this.id
}

output "managed_identity_client_id" {
  description = "Managed Identity Client ID"
  value       = azurerm_user_assigned_identity.this.client_id
}

output "container_app_environment_name" {
  description = "Container Apps Environment name"
  value       = azurerm_container_app_environment.this.name
}

output "container_app_environment_id" {
  description = "Container Apps Environment ID"
  value       = azurerm_container_app_environment.this.id
}