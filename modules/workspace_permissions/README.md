# Workpace Permissions
This module sets USER and ADMIN permissions on a workspace of users, groups, and service principals.

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
| admin\_groups | List of user groups to grant permission ADMIN | `list(string)` | `[]` | no |
| admin\_service\_principles | List of service principle IDs to grant permission ADMIN | `list(string)` | `[]` | no |
| admins | List of users to grant permission ADMIN | `list(string)` | `[]` | no |
| user\_groups | List of user groups to grant permission USER | `list(string)` | `[]` | no |
| user\_service\_principles | List of service principle IDs to grant permission USER | `list(string)` | `[]` | no |
| users | List of users to grant permission USER | `list(string)` | `[]` | no |
| workspace\_id | The ID of the workspace for which permissions will be granted | `string` | n/a | yes |

## Outputs

No output.