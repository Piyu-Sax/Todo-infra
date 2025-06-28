terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
  #   backend "azurerm" {
  #     resource_group_name  = "rajat45456"
  #     storage_account_name = "rani45361"               # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  #     container_name       = "falana1"                 # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  #     key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  #   }
}



provider "azurerm" {
  features {}
  subscription_id = "1f43e7c1-4e8a-4da0-877f-76b7cb3e5898"
}


module "rg" {
  source = "C:/Users/piyus/OneDrive/Desktop/Devops Insider/Main folder/resource folder"

}
module "sg" {
  source = "C:/Users/piyus/OneDrive/Desktop/Devops Insider/Main folder/.terraform/storage folder"

}
module "container" {
  depends_on = [module.sg]
  source     = "../container folder"

}
