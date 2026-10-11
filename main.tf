resource "datadog_integration_confluent_account" "integration_confluent_accounts" {
  for_each = var.integration_confluent_accounts

  api_key    = each.value.api_key
  api_secret = each.value.api_secret
  tags       = each.value.tags
}

