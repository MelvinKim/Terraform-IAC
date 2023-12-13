provider "azurerm" {
  subscription_id = "xxxxxxxx"
  client_id = "xxxxxx"
  client_secret = "xxxxxxx"
  tenant_id = "xxxxx"
  features {
    
  }
}

provider "aws" {
  region = "us-west-1"
}