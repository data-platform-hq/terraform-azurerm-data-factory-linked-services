# Azure Data Factory Linked Services Terraform module
Terraform module for creation Azure Data Factory Linked Services

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                      | Version   |
| ------------------------------------------------------------------------- | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0  |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm)       | >= 3.23.0 |

## Providers

| Name                                                          | Version |
| ------------------------------------------------------------- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.24.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                                                  | Type     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| -------- |
| [azurerm_data_factory_linked_service_data_lake_storage_gen2.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory_linked_service_data_lake_storage_gen2) | resource |
| [azurerm_data_factory_linked_service_azure_databricks.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory_linked_service_azure_databricks)             | resource |
| [azurerm_data_factory_linked_service_azure_sql_database.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory_linked_service_azure_sql_database)         | resource |

## Inputs

| Name                                                                                | Description                                         | Type          | Default | Required |
|-------------------------------------------------------------------------------------|-----------------------------------------------------|---------------|---------|:--------:|
| <a name="input_data_factory_id"></a> [data\_factory\_id](#input\_data\_factory\_id) | Data Factory Id                                     | `string`      | n/a     |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                         | Environment name                                    | `string`      | n/a     |   yes    |
| <a name="input_default_ir_name"></a> [default\_ir\_name](#input\_default\_ir\_name) | Name of Auto Resolve Integration Runtime            | `string`      | n/a     |   yes    |
| <a name="input_adls"></a> [adls](#input\_adls)                                      | ADLS Gen 2 resources list to connect                | `map(string)` | {}      |    no    |
| <a name="input_databricks"></a> [databricks](#input\_databricks)                    | Databricks clusters list                            | `map(any)`    | {}      |    no    |
| <a name="input_mssql"></a> [mssql](#input\_mssql)                                   | Azure SQL connection name to connection string map  |`map(any)`     | {}      |    no    |

## Outputs

| Name                                                                 | Description                                           |
|----------------------------------------------------------------------|-------------------------------------------------------|
| <a name="output_databricks"></a> [databricks](#output\_databricks)   | Databricks Linked Service Name to Id map              |
| <a name="output_adls"></a> [adls](#output\_adls)                     | Azure Data Lake Storage Linked Service Name to Id map |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm<>/tree/master/LICENSE)
