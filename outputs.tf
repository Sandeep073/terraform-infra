output "app_service_url" {
  description = "The URL of the created App Service"
  value       = azurerm_app_service.example.default_site_hostname
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.example.name
}
