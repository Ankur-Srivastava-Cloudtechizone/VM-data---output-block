data "azurerm_subnet" "datasubnet" {
  for_each             = var.vm_map
  name                 = each.value.data_name
  virtual_network_name = each.value.data_virtual_network_name
  resource_group_name  = each.value.rg_name
}