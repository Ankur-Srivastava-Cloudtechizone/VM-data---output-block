output "vm_public_ip" {
  value = azurerm_linux_virtual_machine.Virtual-machine.public_ip_address
}