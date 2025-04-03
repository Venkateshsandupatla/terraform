

  resource "azurerm_storage_account" "terraformState" {
  name                     = "terraformstateugadhi"
  resource_group_name      = azurerm_resource_group.terrafomLearning.name
  location                 = azurerm_resource_group.terrafomLearning.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "terraform"
  }
}

resource "azurerm_storage_container" "terraformStateContainer" {
  name                  = "terraformstatecontainerugadhi"
  storage_account_name  = azurerm_storage_account.terraformState.name
  container_access_type = "private"
}

