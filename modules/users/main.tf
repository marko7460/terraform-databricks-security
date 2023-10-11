locals {
  users = { for user in var.users : user.user_name => user }
}
resource "databricks_user" "users" {
  for_each                   = local.users
  user_name                  = each.value.user_name
  display_name               = each.value.display_name
  allow_cluster_create       = each.value.allow_cluster_create
  active                     = each.value.active
  allow_instance_pool_create = each.value.allow_instance_pool_create
  databricks_sql_access      = each.value.databricks_sql_access
  external_id                = each.value.external_id
  force_delete_repos         = each.value.force_delete_repos
  force_delete_home_dir      = each.value.force_delete_home_dir
  force                      = each.value.force
}