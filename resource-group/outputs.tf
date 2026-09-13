output "resource_group_name" {
  description = "Created Azure Resource Group name"
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "Created Azure Resource Group ID"
  value       = azurerm_resource_group.this.id
}

output "resource_group_location" {
  description = "Azure Resource Group location"
  value       = azurerm_resource_group.this.location
}