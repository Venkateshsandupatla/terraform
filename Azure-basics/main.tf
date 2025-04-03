

resource "azurerm_resource_group" "terrafomLearning" {
  name     = "terraformLearning"
  location = "East US"
}

/*

resource "azurerm_virtual_network" "terraformLearningVnet" {
  name                = "terraformLearningVnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terrafomLearning.location
  resource_group_name = azurerm_resource_group.terrafomLearning.name
}

resource "azurerm_subnet" "terraformLearningSubnet1" {
  name                 = "Subnet-1"
  resource_group_name  = azurerm_resource_group.terrafomLearning.name
  virtual_network_name = azurerm_virtual_network.terraformLearningVnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_subnet" "terraformLearningSubnet2" {
  name                 = "Subnet-2"
  resource_group_name  = azurerm_resource_group.terrafomLearning.name
  virtual_network_name = azurerm_virtual_network.terraformLearningVnet.name
  address_prefixes     = ["10.0.3.0/24"]
  default_outbound_access_enabled = "false"
}

resource "azurerm_network_interface" "terraformLearning_Network_interface" {
  name                = "terraformLearning_Network_interface"
  location            = azurerm_resource_group.terrafomLearning.location
  resource_group_name = azurerm_resource_group.terrafomLearning.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.terraformLearningSubnet1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "terraformVM" {
  name                = "terraformVM1"
  resource_group_name = azurerm_resource_group.terrafomLearning.name
  location            = azurerm_resource_group.terrafomLearning.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.terraformLearning_Network_interface.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDW28ukWPTYkfxfTfokY/ubgne+LJhvsPpmJDFzc7trEsWrOk4fUMQxQ00Rtdb1UcLjmUdFXo9o/o0LC7jX7pIHnL+gbtjSAHJt/VP6oUjsmeigFLWi6krrxHjT8Ed14OmfCxO1z1arzGOPm+gTtgZqbTGbwsCw/u8t/X48HapbxhPpGvHFVsNc/FbJhZD1Mppf2XGeodoWFemLOpuVSDrVZELCfvMSliM0Elc3qtLU6XR580vRPc88Y48WA4+LYE1jPSE5xutIQaA4bPWRpziMoxl1j/eLhegxok6irgzS1c02mkPuPSDNuCQ/EO+11pSVaa2oreol151hSs0JruAXqBqoYtPhutzKK0/HXRm9vYM18ANIy864z+zCOICQj1wSizP1IsGLTMLix9SJXXceijIu2taedYHLakFIb3DLu8D0QVkkRbs4xN9t+9fB7pNamPlVfWYPNyJhNnrlckQr+D7C4MdVyAywCdmWMhzxqtcjQv555cBVoYirMjjUWLk="
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  
}
*/


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


