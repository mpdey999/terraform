terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "East US"
}
