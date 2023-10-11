variable "admin_group_name" {
  description = "The name of the admin group"
  type        = string
  default     = "admin"
}

variable "user_ids" {
  description = "The list of user ids to be added to the admin group"
  type        = list(string)
  default     = []
}