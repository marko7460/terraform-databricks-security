// Users
data "databricks_user" "admins" {
  for_each  = toset(var.admins)
  user_name = each.key
}

resource "databricks_mws_permission_assignment" "admins" {
  for_each     = data.databricks_user.admins
  workspace_id = var.workspace_id
  principal_id = each.value.id
  permissions  = ["ADMIN"]
}

data "databricks_user" "users" {
  for_each  = toset(var.users)
  user_name = each.key
}

resource "databricks_mws_permission_assignment" "users" {
  for_each     = data.databricks_user.users
  workspace_id = var.workspace_id
  principal_id = each.value.id
  permissions  = ["USER"]
}

// Groups
data "databricks_group" "admin_groups" {
  for_each     = toset(var.admin_groups)
  display_name = each.key
}

resource "databricks_mws_permission_assignment" "admin_groups" {
  for_each     = data.databricks_group.admin_groups
  workspace_id = var.workspace_id
  principal_id = each.value.id
  permissions  = ["ADMIN"]
}

data "databricks_group" "user_groups" {
  for_each     = toset(var.user_groups)
  display_name = each.key
}

resource "databricks_mws_permission_assignment" "user_groups" {
  for_each     = data.databricks_group.user_groups
  workspace_id = var.workspace_id
  principal_id = each.value.id
  permissions  = ["USER"]
}

//Service Principals
data "databricks_service_principal" "admin_service_principles" {
  for_each     = toset(var.admin_service_principles)
  display_name = each.key
}

resource "databricks_mws_permission_assignment" "admin_service_principles" {
  for_each     = data.databricks_service_principal.admin_service_principles
  workspace_id = var.workspace_id
  principal_id = each.value.id
  permissions  = ["ADMIN"]
}

data "databricks_service_principal" "user_service_principles" {
  for_each     = toset(var.user_service_principles)
  display_name = each.key
}

resource "databricks_mws_permission_assignment" "user_service_principles" {
  for_each     = data.databricks_service_principal.user_service_principles
  workspace_id = var.workspace_id
  principal_id = each.value.id
  permissions  = ["USER"]
}