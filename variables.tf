variable "identity_application_credential_v3s" {
  description = <<EOT
Map of identity_application_credential_v3s, attributes below
Required:
    - name
Optional:
    - description
    - expires_at
    - region
    - roles
    - secret
    - unrestricted
    - access_rules (block):
        - method (required)
        - path (required)
        - service (required)
EOT

  type = map(object({
    name         = string
    description  = optional(string)
    expires_at   = optional(string)
    region       = optional(string)
    roles        = optional(set(string))
    secret       = optional(string)
    unrestricted = optional(bool)
    access_rules = optional(list(object({
      method  = string
      path    = string
      service = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.identity_application_credential_v3s : (
        v.access_rules == null || alltrue([for item in v.access_rules : (contains(["POST", "GET", "HEAD", "PATCH", "PUT", "DELETE"], item.method))])
      )
    ])
    error_message = "must be one of: \"POST\", \"GET\", \"HEAD\", \"PATCH\", \"PUT\", \"DELETE\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

