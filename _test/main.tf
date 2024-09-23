provider "aws" {
  region = "local"
}

module "iam-openid-connect-provider" {
  source = "./.."

  url            = "https://token.actions.githubusercontent.com"
  client_id_list = ["sts.amazonaws.com"]

  default_tags = {
    app = "example"
    env = "production"
  }
}
