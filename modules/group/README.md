# Databrics Account Group
This module creates a generic group in databricks account.

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
| allow\_cluster\_create | This is a field to allow the group to have cluster create privileges. More fine grained permissions could be assigned with databricks\_permissions and cluster\_id argument. Everyone without allow\_cluster\_create argument set, but with permission to use Cluster Policy would be able to create clusters, but within boundaries of that specific policy. | `bool` | `false` | no |
| allow\_instance\_pool\_create | Allow instance pool create | `bool` | `false` | no |
| databricks\_sql\_access | Databricks SQL access | `bool` | `false` | no |
| display\_name | Group Name | `string` | n/a | yes |
| external\_id | ID of the group in an external identity provider. | `string` | n/a | yes |
| force | Ignore cannot create group: Group with name X already exists. errors and implicitly import the specific group into Terraform state, enforcing entitlements defined in the instance of resource. This functionality is experimental and is designed to simplify corner cases, like Azure Active Directory synchronisation. | `bool` | `false` | no |
| members | List of User IDs to add to this group | `list(string)` | n/a | yes |
| workspace\_access | This is a field to allow the group to have access to Databricks Workspace | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| group | The group object |