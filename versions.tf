terraform {
  required_version = ">= 1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4, < 5"
    }
    http = {
      source  = "hashicorp/http"
      version = ">= 3, < 4"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4, < 5"
    }
  }
}
