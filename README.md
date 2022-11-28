# IAM OpenID Connect provider

This module creates an instance of the [`aws_iam_openid_connect_provider`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) resource.

Other than using the resource directly, you do not need to provide the `thumbprint_list` when using this module because it will determine this value as [documented by AWS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc_verify-thumbprint.html).

## Example Usage

```tf
module "iam-openid-connect-provider" {
  source  = "babbel/iam-openid-connect-provider/aws"
  version = "~> 1.0"

  url            = "https://token.actions.githubusercontent.com"
  client_id_list = ["sts.amazonaws.com"]
}
```
