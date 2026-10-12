output "github_users_id" {
  description = "Map of id values across all github_users, keyed the same as var.github_users except keys with no id are omitted"
  value       = { for k, v in vault_github_user.github_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "github_users_backend" {
  description = "Map of backend values across all github_users, keyed the same as var.github_users except keys with no backend are omitted"
  value       = { for k, v in vault_github_user.github_users : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "github_users_namespace" {
  description = "Map of namespace values across all github_users, keyed the same as var.github_users except keys with no namespace are omitted"
  value       = { for k, v in vault_github_user.github_users : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "github_users_policies" {
  description = "Map of policies values across all github_users, keyed the same as var.github_users except keys with no policies are omitted"
  value       = { for k, v in vault_github_user.github_users : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "github_users_user" {
  description = "Map of user values across all github_users, keyed the same as var.github_users except keys with no user are omitted"
  value       = { for k, v in vault_github_user.github_users : k => v.user if v.user != null && length(v.user) > 0 }
}

