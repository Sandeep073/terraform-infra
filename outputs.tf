output "web_app_url" {
  value = azurerm_linux_web_app.web_app.default_site_hostname
  description = "URL of the deployed web app"
}
