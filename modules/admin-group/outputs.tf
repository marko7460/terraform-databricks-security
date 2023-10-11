output "admin_group_id" {
  description = "Admin group ID"
  value       = databricks_group.admin_group.id
}

output "admin_group" {
  value = databricks_group.admin_group
}