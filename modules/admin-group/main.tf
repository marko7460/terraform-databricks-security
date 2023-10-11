resource "databricks_group" "admin_group" {
  provider     = databricks.mws
  display_name = var.admin_group_name
}

resource "databricks_group_member" "admin_group_member" {
  provider  = databricks.mws
  for_each  = toset(var.user_ids)
  group_id  = databricks_group.admin_group.id
  member_id = each.value
}

resource "databricks_user_role" "metastore_admin" {
  provider = databricks.mws
  for_each = toset(var.user_ids)
  user_id  = each.value
  role     = "account_admin"
}