variable "client_id_list" {
  type = list(string)

  description = <<EOS
List of client IDs, also known as audiences.
EOS
}

variable "default_tags" {
  type    = map(string)
  default = {}

  description = <<EOS
Map of tags assigned to all AWS resources created by this module.
EOS
}

variable "iam_openid_connect_provider_tags" {
  type    = map(string)
  default = {}

  description = <<EOS
Map of tags assigned to the IAM OpenID Connect provider.
EOS
}

variable "url" {
  type = string

  description = <<EOS
URL of the OpenID provider.
EOS
}
