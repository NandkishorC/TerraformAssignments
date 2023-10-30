terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "TerraformRG"
    storage_account_name = "kishorstr"
    container_name       = "container1"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}