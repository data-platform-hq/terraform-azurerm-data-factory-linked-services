variable "data_factory_id" {
  type        = string
  description = "Data Factory name"
}

variable "env" {
  type        = string
  description = "Environment name"
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

variable "mssql" {
  type        = map(any)
  description = "Azure SQL connection name to connection string map"
  default     = {}
}

variable "key_vault_linked_services" {
  description = "List of objects with parameters to configure Key Vault Linked Services in Data Factory"
  type = list(object({
    name                                = string
    key_vault_id                        = string
    data_factory_object_id              = string
    data_factory_tenant_id              = string
    key_vault_policy_secret_permissions = optional(list(string), ["Get", "List"])
  }))
  default = []
}

variable "app_function" {
  type        = map(any)
  description = "App function list"
  default     = {}
}
