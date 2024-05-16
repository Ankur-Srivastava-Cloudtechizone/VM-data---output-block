vnet_map = {
  vnet1 = {
    name          = "frontend-vnet"
    location      = "centralindia"
    rg_name       = "rg-frontend-prod-ci-01"
    address_space = ["10.0.0.0/16"]
  }
  vnet2 = {
    name          = "backend-vnet"
    location      = "southindia"
    rg_name       = "rg-backend-prod-ci-01"
    address_space = ["192.168.0.0/16"]
  }
  vnet3 = {
    name          = "database-vnet"
    location      = "eastus"
    rg_name       = "rg-database-prod-ci-01"
    address_space = ["172.169.0.0/16"]
  }
}