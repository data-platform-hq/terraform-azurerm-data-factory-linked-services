locals {
  key_vault_parameters_mapped  = { for object in var.key_vault_linked_services : object.name => object if object.name != null }
  adls_parameters_mapped       = { for object in var.adls_linked_services : object.name => object if object.name != null }
  databricks_parameters_mapped = { for object in var.databricks_linked_services : object.name => object if object.name != null }
  mssql_parameters_mapped      = { for object in var.mssql_linked_services : object.name => object if object.name != null }
}

resource "azurerm_key_vault_access_policy" "this" {
  for_each = local.key_vault_parameters_mapped

  key_vault_id        = each.value.key_vault_id
  tenant_id           = each.value.data_factory_tenant_id
  object_id           = each.value.data_factory_object_id
  key_permissions     = each.value.key_vault_policy_key_permissions
  secret_permissions  = each.value.key_vault_policy_secret_permissions
  storage_permissions = each.value.key_vault_policy_storage_permissions
}

resource "azurerm_data_factory_linked_service_key_vault" "this" {
  for_each = local.key_vault_parameters_mapped

  name            = each.value.name
  key_vault_id    = each.value.key_vault_id
  data_factory_id = var.data_factory_id
}

resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "this" {
  for_each = local.adls_parameters_mapped

  name                     = each.value.name
  url                      = each.value.data_lake_storage_gen2_url
  use_managed_identity     = true
  data_factory_id          = var.data_factory_id
  integration_runtime_name = var.default_ir_name
}

resource "azurerm_data_factory_linked_service_azure_databricks" "this" {
  for_each = local.databricks_parameters_mapped

  name                     = each.value.name
  data_factory_id          = var.data_factory_id
  existing_cluster_id      = each.value.cluster_id
  access_token             = each.value.token
  adb_domain               = "https://${each.value.url}"
  integration_runtime_name = var.default_ir_name

  lifecycle {
    ignore_changes = [
      additional_properties,
      annotations,
      parameters
    ]
  }
}

resource "azurerm_data_factory_linked_service_azure_sql_database" "this" {
  for_each = local.mssql_parameters_mapped

  name                     = each.value.name
  connection_string        = each.value.connection_string
  use_managed_identity     = true
  data_factory_id          = var.data_factory_id
  integration_runtime_name = var.default_ir_name
}
