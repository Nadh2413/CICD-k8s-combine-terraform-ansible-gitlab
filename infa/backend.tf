terraform {
  backend "azurerm" {
    resource_group_name  = "storage"  
    storage_account_name = "storagehuancd"
    container_name       = "k8scluster-tfstate"                     
    key                  = "prod.terraform.tfstate"      
  }
}
