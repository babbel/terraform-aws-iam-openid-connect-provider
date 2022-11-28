variable "client_id_list" {
  type        = list(string)
  description = "List of client IDs, also known as audiences"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to be attached to the IAM OpenID Connect provider"
}

variable "url" {
  type        = string
  description = "URL of the OpenID provider"
}
