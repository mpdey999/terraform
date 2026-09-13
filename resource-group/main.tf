resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = "centralindia"

  tags = {
    managed_by = "terraform"
    created_by = "harness"
    project    = "Contact_Registration"
  }
}