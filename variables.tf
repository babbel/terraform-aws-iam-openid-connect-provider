variable "client_id_list" {
  type        = list(string)
  description = "List of client IDs, also known as audiences"
}

variable "url" {
  type        = string
  description = "URL of the OpenID provider"
}
