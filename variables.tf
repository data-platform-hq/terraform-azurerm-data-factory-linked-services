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
