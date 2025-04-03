  terraform {
      backend "azurerm" {
      resource_group_name  = "terraformLearning"
      storage_account_name = "terraformstateugadhi"
      container_name       = "terraformstatecontainerugadhi"
      key                  = "terraform.tfstate"
  }
  }
