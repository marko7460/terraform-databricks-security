variable "users" {
  type = list(object({
    user_name                  = string
    display_name               = optional(string, "")
    active                     = optional(bool, true)
    force                      = optional(bool, false)
    force_delete_repos         = optional(bool, true)
    force_delete_home_dir      = optional(bool, true)
    disable_as_user_deletion   = optional(bool, false)
    external_id                = optional(string, null)
    allow_cluster_create       = optional(bool, false)
    allow_instance_pool_create = optional(bool, false)
    databricks_sql_access      = optional(bool, true)
  }))
}