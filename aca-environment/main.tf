# ---------------------------------------------------------
# Resource Group
# ---------------------------------------------------------

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    managed_by = "terraform"
    created_by = "harness"
    project    = "Contact_Registration"
  }
}


# ---------------------------------------------------------
# Virtual Network
# ---------------------------------------------------------

resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = var.vnet_address_space

  tags = {
    managed_by = "terraform"
    created_by = "harness"
    project    = "Contact_Registration"
  }
}


# ---------------------------------------------------------
# Subnet
# ---------------------------------------------------------

resource "azurerm_subnet" "this" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = var.subnet_address_prefixes

  delegation {
    name = "container-apps-delegation"

    service_delegation {
      name = "Microsoft.App/environments"

      actions = [
        "Microsoft.Network/virtualNetworks/subnets/action"
      ]
    }
  }
}


# ---------------------------------------------------------
# Log Analytics Workspace
# ---------------------------------------------------------

resource "azurerm_log_analytics_workspace" "this" {
  name                = var.log_analytics_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  sku               = "PerGB2018"
  retention_in_days = 30

  tags = {
    managed_by = "terraform"
    created_by = "harness"
    project    = "Contact_Registration"
  }
}


# ---------------------------------------------------------
# User Assigned Managed Identity
# ---------------------------------------------------------

resource "azurerm_user_assigned_identity" "this" {
  name                = var.managed_identity_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  tags = {
    managed_by = "terraform"
    created_by = "harness"
    project    = "Contact_Registration"
  }
}


# ---------------------------------------------------------
# Azure Container Apps Environment
# ---------------------------------------------------------

resource "azurerm_container_app_environment" "this" {
  name                = var.container_app_environment_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  infrastructure_subnet_id = azurerm_subnet.this.id

  log_analytics_workspace_id = azurerm_log_analytics_workspace.this.id

  tags = {
    managed_by = "terraform"
    created_by = "harness"
    project    = "Contact_Registration"
  }
}