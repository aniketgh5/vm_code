resource "azurerm_resource_group" "kolkata-rg" {
  name     = var.rg-name
  location = var.rg-location


}

resource "azurerm_storage_account" "kolkata-stg" {
    depends_on = [ azurerm_resource_group.kolkata-rg ]
  name                     = var.kolkata-stg-name
  resource_group_name      = var.rg-name
  location                 = var.rg-location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}


resource "azurerm_storage_container" "kolkata-cont" {
depends_on = [ azurerm_storage_account.kolkata-stg ]
  name                  = var.name-cont
  storage_account_id    = azurerm_storage_account.kolkata-stg.id   # <- reference resource id
  container_access_type = "private"
}

