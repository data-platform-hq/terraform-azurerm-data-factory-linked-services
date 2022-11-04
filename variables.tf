variable "data_factory_id" {
  type        = string
  description = "Data Factory name"
}

variable "resource_group" {
  type        = string
  description = "The name of the resource group in which to create the storage account"
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "key_vault_id" {
  type        = string
  description = "ID of the Key Vault instance where the Secret resides"
}

variable "default_ir_name" {
  type        = string
  description = "Name of Auto Resolve Integration Runtime"
}

variable "adls" {
  type        = map(string)
  description = "ADLS Gen 2 resources list to connect"
  default     = {}
}

variable "databricks" {
  type        = map(any)
  description = "Databricks clusters list"
  default     = {}
}
