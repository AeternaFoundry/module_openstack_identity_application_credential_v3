output "identity_application_credential_v3s_id" {
  description = "Map of id values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.id }
}
output "identity_application_credential_v3s_access_rules" {
  description = "Map of access_rules values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.access_rules }
}
output "identity_application_credential_v3s_description" {
  description = "Map of description values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.description }
}
output "identity_application_credential_v3s_expires_at" {
  description = "Map of expires_at values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.expires_at }
}
output "identity_application_credential_v3s_name" {
  description = "Map of name values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.name }
}
output "identity_application_credential_v3s_project_id" {
  description = "Map of project_id values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.project_id }
}
output "identity_application_credential_v3s_region" {
  description = "Map of region values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.region }
}
output "identity_application_credential_v3s_roles" {
  description = "Map of roles values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.roles }
}
output "identity_application_credential_v3s_secret" {
  description = "Map of secret values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.secret }
  sensitive   = true
}
output "identity_application_credential_v3s_unrestricted" {
  description = "Map of unrestricted values across all identity_application_credential_v3s, keyed the same as var.identity_application_credential_v3s"
  value       = { for k, v in openstack_identity_application_credential_v3.identity_application_credential_v3s : k => v.unrestricted }
}

