# Databrics Admin-Group
This module creates an admin group with users in databrics account

To use this module you have to define the following environment variables:
- `DATABRICKS_HOST`: The host of the databricks account. For example: `DATABRICKS_HOST=https://accounts.cloud.databricks.com`.
- `DATABRICKS_ACCOUNT_ID`: The databricks account ID.
- `DATABRICKS_CLIENT_ID`: The databricks client ID of the service principle. See [here](https://docs.databricks.com/en/dev-tools/authentication-oauth.html) for more information.
- `DATABRICKS_CLIENT_SECRET`: The databricks client ID secret of the service principle. See [here](https://docs.databricks.com/en/dev-tools/authentication-oauth.html) for more information.

## Providers

| Name | Version |
|------|---------|
| databricks.mws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| admin\_group\_name | The name of the admin group | `string` | `"admin"` | no |
| user\_ids | The list of user ids to be added to the admin group | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| admin\_group | n/a |
| admin\_group\_id | Admin group ID |