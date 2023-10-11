resource "databricks_group" "this" {
  display_name               = var.display_name
  allow_cluster_create       = var.allow_cluster_create
  allow_instance_pool_create = var.allow_instance_pool_create
  databricks_sql_access      = var.databricks_sql_access
  external_id                = var.external_id
  force                      = var.force
  workspace_access           = var.workspace_access
}


resource "databricks_group_member" "member" {
  for_each  = toset(var.members)
  group_id  = databricks_group.this.id
  member_id = each.value
}