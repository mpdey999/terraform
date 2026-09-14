subscription_id = "YOUR-AZURE-SUBSCRIPTION-ID"

resource_group_name = "rg-contact-registration"

location = "centralindia"

vnet_name = "vnet-contact-registration"

vnet_address_space = [
  "10.0.0.0/16"
]

subnet_name = "snet-container-apps"

subnet_address_prefixes = [
  "10.0.1.0/24"
]

log_analytics_name = "law-contact-registration"

managed_identity_name = "id-contact-registration"

container_app_environment_name = "cae-contact-registration"