data "azurerm_subnet" "datasubnet" {
  name                 = "frontend-subnet-01"
  virtual_network_name = "frontend-vnet"
  resource_group_name  = "rg-frontend-prod-ci-01"
}