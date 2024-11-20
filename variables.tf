variable "subscription" {
  default = "4bf3e463-ed9f-4148-8906-3eed094e0794" /// Add your own subscription
}
variable "resource_group_name" {
  description = "resource group name"
  type        = string
  default     = "production-development"

}

variable "location" {
  description = "This is the resource group location"
  type        = string
  default     = "uksouth"
}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "vnet_name" {
  type    = string
  default = "prodcution-vnet"
}

variable "subnet_names" {
  type    = list(string)
  default = ["subnet1"]
}

variable "subnet_prefixes" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}