resource "vault_github_user" "github_users" {
  for_each = var.github_users

  user      = each.value.user
  backend   = each.value.backend
  namespace = each.value.namespace
  policies  = each.value.policies
}

