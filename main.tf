# https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc_verify-thumbprint.html

data "http" "openid-configuration" {
  url = "${var.url}/.well-known/openid-configuration"
}

data "tls_certificate" "jwks" {
  url = jsondecode(data.http.openid-configuration.response_body).jwks_uri
}

resource "aws_iam_openid_connect_provider" "this" {
  url = var.url

  client_id_list = var.client_id_list

  thumbprint_list = [
    # This should give us the certificate of the top intermediate CA in the certificate authority chain
    one(
      [
        for cert in data.tls_certificate.jwks.certificates :
        cert
        if cert.is_ca
      ]
    ).sha1_fingerprint,
  ]

  tags = var.default_tags
}
