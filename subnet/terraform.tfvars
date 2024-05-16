subnet_map = {
  subnet1 = {
    name             = "frontend-subnet-01"
    rg_name          = "rg-frontend-prod-ci-01"
    vnet_name        = "frontend-vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    name             = "frontend-subnet-02"
    rg_name          = "rg-frontend-prod-ci-01"
    vnet_name        = "frontend-vnet"
    address_prefixes = ["10.0.2.0/24"]
  }
  subnet3 = {
    name             = "backend-subnet-01"
    rg_name          = "rg-backend-prod-ci-01"
    vnet_name        = "backend-vnet"
    address_prefixes = ["192.168.1.0/24"]
  }
  subnet4 = {
    name             = "backend-subnet-02"
    rg_name          = "rg-backend-prod-ci-01"
    vnet_name        = "backend-vnet"
    address_prefixes = ["192.168.2.0/24"]
  }
  subnet5 = {
    name             = "database-subnet-01"
    rg_name          = "rg-database-prod-ci-01"
    vnet_name        = "database-vnet"
    address_prefixes = ["172.169.1.0/24"]
  }
  subnet6 = {
    name             = "database-subnet-02"
    rg_name          = "rg-database-prod-ci-01"
    vnet_name        = "database-vnet"
    address_prefixes = ["172.169.2.0/24"]
  }
}

