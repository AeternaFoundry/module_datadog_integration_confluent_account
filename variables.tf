variable "integration_confluent_accounts" {
  description = <<EOT
Map of integration_confluent_accounts, attributes below
Required:
    - api_key
    - api_secret
Optional:
    - tags
EOT

  type = map(object({
    api_key    = string
    api_secret = string
    tags       = optional(set(string))
  }))
}

