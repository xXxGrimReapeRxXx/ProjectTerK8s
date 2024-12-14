
variable "access_key" {}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    
  }
  
  required_version = ">= 1.1.0"
  backend "azurerm" {
    storage_account_name = "securestoragewestus2"  # Replace with your storage account name
    container_name       = "terraformstate"       # Replace with your container name
    key                  = "terraform.tfstate" 
         
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
