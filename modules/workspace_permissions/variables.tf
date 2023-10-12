variable "workspace_id" {
  description = "The ID of the workspace for which permissions will be granted"
  type        = string
}

variable "users" {
  description = "List of users to grant permission USER"
  type        = list(string)
  default     = []
}

variable "admins" {
  description = "List of users to grant permission ADMIN"
  type        = list(string)
  default     = []
}

variable "user_groups" {
  description = "List of user groups to grant permission USER"
  type        = list(string)
  default     = []
}

variable "admin_groups" {
  description = "List of user groups to grant permission ADMIN"
  type        = list(string)
  default     = []
}

variable "user_service_principles" {
  description = "List of service principle IDs to grant permission USER"
  type        = list(string)
  default     = []
}

variable "admin_service_principles" {
  description = "List of service principle IDs to grant permission ADMIN"
  type        = list(string)
  default     = []
}