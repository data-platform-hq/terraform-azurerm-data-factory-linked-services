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
| [azurerm_key_vault_access_policy.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_data_factory_linked_service_key_vault.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory_linked_service_key_vault) | resource |

## Inputs

| Name                                                                                                                | Description                                         | Type                                                                                                                                                                                                                                                                                                                        | Default | Required |
|---------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------|:--------:|
| <a name="input_data_factory_id"></a> [data\_factory\_id](#input\_data\_factory\_id)                                 | Data Factory Id                                     | `string`                                                                                                                                                                                                                                                                                                                    | n/a     |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                                                         | Environment name                                    | `string`                                                                                                                                                                                                                                                                                                                    | n/a     |   yes    |
| <a name="input_default_ir_name"></a> [default\_ir\_name](#input\_default\_ir\_name)                                 | Name of Auto Resolve Integration Runtime            | `string`                                                                                                                                                                                                                                                                                                                    | n/a     |   yes    |
| <a name="input_adls"></a> [adls](#input\_adls)                                                                      | ADLS Gen 2 resources list to connect                | `map(string)`                                                                                                                                                                                                                                                                                                               | {}      |    no    |
| <a name="input_databricks"></a> [databricks](#input\_databricks)                                                    | Databricks clusters list                            | `map(any)`                                                                                                                                                                                                                                                                                                                  | {}      |    no    |
| <a name="input_mssql"></a> [mssql](#input\_mssql)                                                                   | Azure SQL connection name to connection string map  | `map(any)`                                                                                                                                                                                                                                                                                                                  | {}      |    no    |
| <a name="input_key_vault_linked_services"></a> [key\_vault\_linked\_services](#input\_key\_vault\_linked\_services) | List of objects with parameters to configure Key Vault Linked Services in Data Factory  | <pre>list(object({ <br> name                                = string <br> key_vault_id                        = string <br> data_factory_object_id              = string <br> data_factory_tenant_id              = string <br> key_vault_policy_secret_permissions = optional(list(string), ["Get", "List"]) <br>}))</pre> | []      |    no    |

## Outputs

| Name                                                               | Description                                           |
|--------------------------------------------------------------------|-------------------------------------------------------|
| <a name="output_databricks"></a> [databricks](#output\_databricks) | Databricks Linked Service Name to Id map              |
| <a name="output_adls"></a> [adls](#output\_adls)                   | Azure Data Lake Storage Linked Service Name to Id map |
| <a name="output_mssql"></a> [mssql](#output\_mssql)                | Azure SQL Linked Service Name to Id map |
| <a name="output_key_vault"></a> [key\_vault](#output\_key\_vault)  | Azure Key Vault Linked Service Name to parameters map |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm<>/tree/master/LICENSE)