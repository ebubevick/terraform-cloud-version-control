# Output for the Azure Resource Group
output "resource_group_name" {
  value = azurerm_resource_group.resource_group_name.name
}

# Outputs for the Public Virtual Network Module
output "vnet_public_name" {
  value = module.vnet-public-module.vnet_name
}

# output "vnet_public_subnet_names" {
#   value = module.vnet-public-module.subnet_names
# }

# # Outputs for the Local Virtual Network Module
# output "vnet_local_name" {
#   value = module.vnet-local-module.vnet_name
# }

# output "vnet_local_public_subnet_name" {
#   value = module.vnet-local-module.public_subnet_name
# }
