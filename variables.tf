variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
  default     = "rg-cicd-portfolio"
}

variable "location" {
    description = "The Azure region where the Resource Group will be created."
    type        = string
    default     = "westeurope"
}