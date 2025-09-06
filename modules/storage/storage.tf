resource "azurerm_storage_account" "stg01" {
  name                     = var.name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.replica_type
  account_kind			   = var.account_kind

  tags = {
    environment = var.env
	project = var.project
  }
}

resource "azurerm_storage_container" "con1" {
  name                  = var.con_name
  storage_account_name    = azurerm_storage_account.stg01.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob01" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.stg01.name
  storage_container_name = azurerm_storage_container.con1.name
  type                   = "Block"
}