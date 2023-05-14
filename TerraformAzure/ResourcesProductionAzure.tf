# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "maintainancemaven-resource-group"
  location = "westeurope"
}

# Create a storage account
resource "azurerm_storage_account" "sa" {
  name                     = "maintainancemavenstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "prod"
  }
}

# Create a static website
resource "azurerm_storage_static_website" "sw" {
  name                = "${azurerm_storage_account.sa.name}-web"
  storage_account_id  = azurerm_storage_account.sa.id
  index_document      = "index.html"
  error_404_document  = "404.html"
}

# Upload files to storage account
resource "azurerm_storage_blob" "sb" {
  name                   = "index.html"
  type                   = "Block"
  source                 = "index.html"
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_static_website.sw.container_name
}

# Output the website URL
output "website_url" {
  value = azurerm_storage_static_website.sw.primary_endpoint
}
