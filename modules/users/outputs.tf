output "users" {
  description = "A list of users and their properties"
  value       = databricks_user.users
}

output "user_ids" {
  description = "A map of user names to user ids"
  value       = { for user in databricks_user.users : user.user_name => user.id }
}