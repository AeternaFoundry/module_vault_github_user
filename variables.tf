variable "github_users" {
  description = <<EOT
Map of github_users, attributes below
Required:
    - user
Optional:
    - backend
    - namespace
    - policies
EOT

  type = map(object({
    user      = string
    backend   = optional(string)
    namespace = optional(string)
    policies  = optional(list(string))
  }))
}

