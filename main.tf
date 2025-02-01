provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "hello-world-rg"
  location = var.location
}

# App Service Plan
resource "azurerm_app_service_plan" "app_plan" {
  name                = "hello-world-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Free"
    size = "F1"
  }
}

# Web App
resource "azurerm_linux_web_app" "web_app" {
  name                = "hello-world-webapp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_app_service_plan.app_plan.id

  site_config {
    java_version = "Java 11"
  }

  app_settings = {
    WEBSITE_RUN_FROM_PACKAGE = "1"
  }
}
