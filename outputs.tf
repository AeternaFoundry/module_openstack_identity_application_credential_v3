output "identity_application_credential_v3s_id" {
  description = "Map of id values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no id are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_application_credential_v3s_access_rules" {
  description = "Map of access_rules values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no access_rules are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.access_rules if v.access_rules != null && length(v.access_rules) > 0 }
}
output "identity_application_credential_v3s_description" {
  description = "Map of description values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no description are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.description if v.description != null && length(v.description) > 0 }
}
output "identity_application_credential_v3s_expires_at" {
  description = "Map of expires_at values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no expires_at are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.expires_at if v.expires_at != null && length(v.expires_at) > 0 }
}
output "identity_application_credential_v3s_name" {
  description = "Map of name values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no name are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_application_credential_v3s_project_id" {
  description = "Map of project_id values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no project_id are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "identity_application_credential_v3s_region" {
  description = "Map of region values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no region are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "identity_application_credential_v3s_roles" {
  description = "Map of roles values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no roles are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "identity_application_credential_v3s_secret" {
  description = "Map of secret values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no secret are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.secret if v.secret != null && length(v.secret) > 0 }
  sensitive   = true
}
output "identity_application_credential_v3s_unrestricted" {
  description = "Map of unrestricted values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s except keys with no unrestricted are omitted"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.unrestricted if v.unrestricted != null }
}

