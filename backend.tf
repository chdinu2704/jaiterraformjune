terraform {
  backend "azurerm" {
	resource_group_name  = "bob-dev-rg-01"
    storage_account_name = "jaiterraformst25"
    container_name       = "tfaz"                
    key                  = "tag"
  }
}