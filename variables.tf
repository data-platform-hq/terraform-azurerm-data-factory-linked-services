variable "data_factory_id" {
  type        = string
  description = "Data Factory name"
}

variable "default_ir_name" {
  type        = string
  description = "Name of Auto Resolve Integration Runtime"
}

variable "adls_linked_services" {
  description = "List of objects with parameters to configure ADLSv2 Linked Services in Data Factory"
  type = list(object({
    name                       = string
    data_lake_storage_gen2_url = string
  }))
  default = []
}

variable "databricks_linked_services" {
  description = "List of objects with parameters to configure Databricks Linked Services in Data Factory"
  type = list(object({
    name       = string
    cluster_id = string
    token      = string
    url        = string
  }))
  default = []
}

variable "mssql_linked_services" {
  description = "List of objects with parameters to configure MySQL Linked Services in Data Factory"
  type = list(object({
    name              = string
    connection_string = string
  }))
  default = []
}

variable "key_vault_linked_services" {
  description = "List of objects with parameters to configure Key Vault Linked Services in Data Factory"
  type = list(object({
    name                                 = string
    key_vault_id                         = string
    data_factory_object_id               = string
    data_factory_tenant_id               = string
    key_vault_policy_key_permissions     = optional(list(string), [])
    key_vault_policy_secret_permissions  = optional(list(string), ["Get", "List"])
    key_vault_policy_storage_permissions = optional(list(string), [])
  }))
  default = []
}
