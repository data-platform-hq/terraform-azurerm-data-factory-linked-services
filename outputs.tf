output "databricks" {
  value       = { for ls in azurerm_data_factory_linked_service_azure_databricks.this : ls.name => ls.id }
  description = "Databricks Linked Service Name to Id map"
}

output "adls" {
  value       = { for ls in azurerm_data_factory_linked_service_data_lake_storage_gen2.this : ls.name => ls.id }
  description = "Azure Data Lake Storage Linked Service Name to Id map"
}

output "mssql" {
  value       = { for ls in azurerm_data_factory_linked_service_azure_sql_database.this : ls.name => ls.id }
  description = "Azure SQL Linked Service Name to Id map"
}

output "key_vault" {
  value       = { for list in azurerm_data_factory_linked_service_key_vault.this : list.name => list }
  description = "Azure Key Vault Linked Service Name to parameters map"
}
