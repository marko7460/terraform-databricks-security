variable "display_name" {
  description = "Group Name"
  type        = string
}

variable "members" {
  description = "List of User IDs to add to this group"
  type        = list(string)
  default     = []
}

variable "workspace_access" {
  description = "This is a field to allow the group to have access to Databricks Workspace"
  type        = bool
  default     = false
}

variable "external_id" {
  description = "ID of the group in an external identity provider."
  type        = string
  default     = null
}

variable "allow_cluster_create" {
  description = "This is a field to allow the group to have cluster create privileges. More fine grained permissions could be assigned with databricks_permissions and cluster_id argument. Everyone without allow_cluster_create argument set, but with permission to use Cluster Policy would be able to create clusters, but within boundaries of that specific policy."
  type        = bool
  default     = false
}

variable "allow_instance_pool_create" {
  description = "Allow instance pool create"
  type        = bool
  default     = false
}

variable "databricks_sql_access" {
  description = "Databricks SQL access"
  type        = bool
  default     = false
}

variable "force" {
  description = "Ignore cannot create group: Group with name X already exists. errors and implicitly import the specific group into Terraform state, enforcing entitlements defined in the instance of resource. This functionality is experimental and is designed to simplify corner cases, like Azure Active Directory synchronisation."
  default     = false
  type        = bool
}