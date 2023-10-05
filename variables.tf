variable "project_name" {
  description = "project name"
  type        = string
}

variable "database_name" {
  description = "Database name in the (Data catalog) of Glue service"
  type        = string
}

variable "iam_role_arn" {
  description = "Arn of generated role"
  type        = string
}

variable "cron_schedule" {
  description = "cron formatted schedule"
  type        = string
}

variable "table_prefix" {
  description = "prefix for all tables"
  type        = string
  default     = ""
}

variable "delete_behavior" {
  description = "behaviour when deleting"
  type        = string
  default     = "DEPRECATE_IN_DATABASE"
}

variable "update_behavior" {
  description = "behaviour when updating"
  type        = string
  default     = "UPDATE_IN_DATABASE"
}

variable "recrawl_behavior" {
  description = "behaviour when recrawling"
  type        = string
  default     = null
}

variable "s3_source_path" {
  description = "path of s3 source"
  type        = string
}

variable "s3_target_sample_size" {
  type = string
  description = "How many files per leaf directory to sample. Defaults to null"
  default = null 
}

#Optional variables - default values used unless others specified:
variable "resource_tags" {
  description = "Defaults to no tags. If needed, env vars can be given in parent module variables.tf, and assigned in child module call"
  type        = map(string)
  default = {
    "tag" = "none given"
  }
}
