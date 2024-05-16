resource "azurerm_public_ip" "azurerm-pip" {
  name                = "pip-vm"
  resource_group_name = "rg-frontend-prod-ci-01"
  location            = "centralindia"
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_network_interface" "network-interface" {
  name                = "nic-frontend-prod-ci-01"
  location            = "centralindia"
  resource_group_name = "rg-frontend-prod-ci-01"

  ip_configuration {
    name                          = "nic-frontend"
    subnet_id                     = data.azurerm_subnet.datasubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.azurerm-pip.id
  }
}

resource "azurerm_linux_virtual_machine" "Virtual-machine" {
  name                            = "vm-frontend"
  resource_group_name             = "rg-frontend-prod-ci-01"
  location                        = "centralindia"
  size                            = "Standard_DS1_v2"
  disable_password_authentication = false
  admin_username                  = "adminuser"
  admin_password                  = "admin@123456"
  network_interface_ids = [
    azurerm_network_interface.network-interface.id,
  ]

  # admin_ssh_key {
  #   username   = "adminuser"
  #   public_key = file("~/.ssh/id_rsa.pub")
  # }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}