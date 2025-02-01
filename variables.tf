variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "The location where the resources will be created"
  type        = string
  default     = "East US"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "example-app-service-plan"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
  default     = "example-app-service"
}
