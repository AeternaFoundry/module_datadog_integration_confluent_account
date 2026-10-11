output "integration_confluent_accounts_id" {
  description = "Map of id values across all integration_confluent_accounts, keyed the same as var.integration_confluent_accounts except keys with no id are omitted"
  value       = { for k, v in datadog_integration_confluent_account.integration_confluent_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_confluent_accounts_api_key" {
  description = "Map of api_key values across all integration_confluent_accounts, keyed the same as var.integration_confluent_accounts except keys with no api_key are omitted"
  value       = { for k, v in datadog_integration_confluent_account.integration_confluent_accounts : k => v.api_key if v.api_key != null && length(v.api_key) > 0 }
}
output "integration_confluent_accounts_api_secret" {
  description = "Map of api_secret values across all integration_confluent_accounts, keyed the same as var.integration_confluent_accounts except keys with no api_secret are omitted"
  value       = { for k, v in datadog_integration_confluent_account.integration_confluent_accounts : k => v.api_secret if v.api_secret != null && length(v.api_secret) > 0 }
  sensitive   = true
}
output "integration_confluent_accounts_tags" {
  description = "Map of tags values across all integration_confluent_accounts, keyed the same as var.integration_confluent_accounts except keys with no tags are omitted"
  value       = { for k, v in datadog_integration_confluent_account.integration_confluent_accounts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

