resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "this" {
  for_each = var.adls

  name                     = "${var.env}-${each.key}"
  url                      = each.value
  use_managed_identity     = true
  data_factory_id          = var.data_factory_id
  integration_runtime_name = var.default_ir_name
}

resource "azurerm_data_factory_linked_service_azure_databricks" "this" {
  for_each = var.databricks

  name                     = "${var.env}-${each.key}"
  data_factory_id          = var.data_factory_id
  existing_cluster_id      = each.value["cluster_id"]
  access_token             = each.value["token"]
  adb_domain               = "https://${each.value["url"]}"
  integration_runtime_name = var.default_ir_name

  lifecycle {
    ignore_changes = [
      additional_properties,
      annotations,
      parameters
    ]
  }
}
