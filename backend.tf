terraform {
  backend "azurerm" {
    resource_group_name  = "kolkata-resource"
    storage_account_name = "kolkata7401"
    container_name       = "kolkata-container"
    key                  = "kolkata.tfstate"
    # Optional: Use Azure AD authentication instead of access keys
    # use_azuread_auth = true 
    # Optional: If using Azure AD authentication with OIDC
    # use_oidc = true 
  }
}