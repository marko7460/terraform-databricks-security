# Databrics Users
The metastore module creates users in databrics account

To use this module you have to define the following environment variables:
- `DATABRICKS_HOST`: The host of the databricks account. For example: `DATABRICKS_HOST=https://accounts.cloud.databricks.com`.
- `DATABRICKS_ACCOUNT_ID`: The databricks account ID.
- `DATABRICKS_CLIENT_ID`: The databricks client ID of the service principle. See [here](https://docs.databricks.com/en/dev-tools/authentication-oauth.html) for more information.
- `DATABRICKS_CLIENT_SECRET`: The databricks client ID secret of the service principle. See [here](https://docs.databricks.com/en/dev-tools/authentication-oauth.html) for more information.

## Providers

| Name | Version |
|------|---------|
| databricks | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| users | n/a | <pre>list(object({<br>    user_name                  = string<br>    display_name               = optional(string, "")<br>    active                     = optional(bool, true)<br>    force                      = optional(bool, false)<br>    force_delete_repos         = optional(bool, true)<br>    force_delete_home_dir      = optional(bool, true)<br>    disable_as_user_deletion   = optional(bool, false)<br>    external_id                = optional(string, null)<br>    allow_cluster_create       = optional(bool, false)<br>    allow_instance_pool_create = optional(bool, false)<br>    databricks_sql_access      = optional(bool, true)<br>  }))<br></pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| user\_ids | A map of user names to user ids |
| users | A list of users and their properties |