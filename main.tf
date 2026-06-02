resource "azurerm_resource_group" "jay_rg" {
  for_each = var.resource-group
  name     = each.key
  location = each.value
}
resource "azurerm_virtual_network" "virtual-network" {
  depends_on          = [azurerm_resource_group.jay_rg]
  for_each            = var.virtual-network
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  address_space       = each.value.address_space
}
resource "azurerm_subnet" "subnetwork" {
  for_each             = var.subnetwork
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}